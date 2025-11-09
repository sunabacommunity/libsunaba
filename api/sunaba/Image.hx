package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;
import sunaba.core.Signal;
import sunaba.core.Rect2i;
import sunaba.core.Vector2i;
import sunaba.core.ByteArray;
import sunaba.core.Color;

class Image extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Image');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Image', native];
        scriptLoader.call('loadScript', args);
    }

    public var data(get, set): Dictionary;
    function get_data(): Dictionary {
        return native.get('data');
    }
    function set_data(value: Dictionary): Dictionary {
      native.set('data', value);
        return value;
    }


  public function adjustBcs(brightness: Float, contrast: Float, saturation: Float): Void {
      var args = new ArrayList();
      args.append(brightness);
      args.append(contrast);
      args.append(saturation);
      native.call('adjust_bcs', args);
  }
  public function blendRect(src: Image, srcRect: Rect2i, dst: Vector2i): Void {
      var args = new ArrayList();
      args.append(src.native);
      args.append(srcRect);
      args.append(dst);
      native.call('blend_rect', args);
  }
  public function blendRectMask(src: Image, mask: Image, srcRect: Rect2i, dst: Vector2i): Void {
      var args = new ArrayList();
      args.append(src.native);
      args.append(mask.native);
      args.append(srcRect);
      args.append(dst);
      native.call('blend_rect_mask', args);
  }
  public function blitRect(src: Image, srcRect: Rect2i, dst: Vector2i): Void {
      var args = new ArrayList();
      args.append(src.native);
      args.append(srcRect);
      args.append(dst);
      native.call('blit_rect', args);
  }
  public function blitRectMask(src: Image, mask: Image, srcRect: Rect2i, dst: Vector2i): Void {
      var args = new ArrayList();
      args.append(src.native);
      args.append(mask.native);
      args.append(srcRect);
      args.append(dst);
      native.call('blit_rect_mask', args);
  }
  public function bumpMapToNormalMap(?bumpScale: Float): Void {
      var args = new ArrayList();
      if (bumpScale != null) {
          args.append(bumpScale);
      }
      native.call('bump_map_to_normal_map', args);
  }
  public function clearMipmaps(): Void {
      var args = new ArrayList();
      native.call('clear_mipmaps', args);
  }
  public function compress(mode: Int, ?source: Int, ?astcFormat: Int): Int {
      var args = new ArrayList();
      args.append(mode);
      if (source != null) {
          args.append(source);
      }
      if (astcFormat != null) {
          args.append(astcFormat);
      }
      return native.call('compress', args);
  }
  public function compressFromChannels(mode: Int, channels: Int, ?astcFormat: Int): Int {
      var args = new ArrayList();
      args.append(mode);
      args.append(channels);
      if (astcFormat != null) {
          args.append(astcFormat);
      }
      return native.call('compress_from_channels', args);
  }
  public function computeImageMetrics(comparedImage: Image, useLuma: Bool): Dictionary {
      var args = new ArrayList();
      args.append(comparedImage.native);
      args.append(useLuma);
      return native.call('compute_image_metrics', args);
  }
  public function convert(format: Int): Void {
      var args = new ArrayList();
      args.append(format);
      native.call('convert', args);
  }
  public function copyFrom(src: Image): Void {
      var args = new ArrayList();
      args.append(src.native);
      native.call('copy_from', args);
  }
  public static function create(width: Int, height: Int, useMipmaps: Bool, format: Int): Image {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      args.append(useMipmaps);
      args.append(format);
      var ref: NativeReference = NativeObject.callStatic('Image', 'create', args);
      return new Image(ref);
  }
  public static function createEmpty(width: Int, height: Int, useMipmaps: Bool, format: Int): Image {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      args.append(useMipmaps);
      args.append(format);
      var ref: NativeReference = NativeObject.callStatic('Image', 'create_empty', args);
      return new Image(ref);
  }
  public static function createFromData(width: Int, height: Int, useMipmaps: Bool, format: Int, data: ByteArray): Image {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      args.append(useMipmaps);
      args.append(format);
      args.append(data);
      var ref: NativeReference = NativeObject.callStatic('Image', 'create_from_data', args);
      return new Image(ref);
  }
  public function crop(width: Int, height: Int): Void {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      native.call('crop', args);
  }
  public function decompress(): Int {
      var args = new ArrayList();
      return native.call('decompress', args);
  }
  public function detectAlpha(): Int {
      var args = new ArrayList();
      return native.call('detect_alpha', args);
  }
  public function detectUsedChannels(?source: Int): Int {
      var args = new ArrayList();
      if (source != null) {
          args.append(source);
      }
      return native.call('detect_used_channels', args);
  }
  public function fill(color: Color): Void {
      var args = new ArrayList();
      args.append(color);
      native.call('fill', args);
  }
  public function fillRect(rect: Rect2i, color: Color): Void {
      var args = new ArrayList();
      args.append(rect);
      args.append(color);
      native.call('fill_rect', args);
  }
  public function fixAlphaEdges(): Void {
      var args = new ArrayList();
      native.call('fix_alpha_edges', args);
  }
  public function flipX(): Void {
      var args = new ArrayList();
      native.call('flip_x', args);
  }
  public function flipY(): Void {
      var args = new ArrayList();
      native.call('flip_y', args);
  }
  public function generateMipmaps(?renormalize: Bool): Int {
      var args = new ArrayList();
      if (renormalize != null) {
          args.append(renormalize);
      }
      return native.call('generate_mipmaps', args);
  }
  public function getData(): ByteArray {
      var args = new ArrayList();
      return native.call('get_data', args);
  }
  public function getDataSize(): Int {
      var args = new ArrayList();
      return native.call('get_data_size', args);
  }
  public function getFormat(): Int {
      var args = new ArrayList();
      return native.call('get_format', args);
  }
  public function getHeight(): Int {
      var args = new ArrayList();
      return native.call('get_height', args);
  }
  public function getMipmapCount(): Int {
      var args = new ArrayList();
      return native.call('get_mipmap_count', args);
  }
  public function getMipmapOffset(mipmap: Int): Int {
      var args = new ArrayList();
      args.append(mipmap);
      return native.call('get_mipmap_offset', args);
  }
  public function getPixel(x: Int, y: Int): Color {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      return native.call('get_pixel', args);
  }
  public function getPixelv(point: Vector2i): Color {
      var args = new ArrayList();
      args.append(point);
      return native.call('get_pixelv', args);
  }
  public function getRegion(region: Rect2i): Image {
      var args = new ArrayList();
      args.append(region);
      var ref: NativeReference = native.call('get_region', args);
      return new Image(ref);
  }
  public function getSize(): Vector2i {
      var args = new ArrayList();
      return native.call('get_size', args);
  }
  public function getUsedRect(): Rect2i {
      var args = new ArrayList();
      return native.call('get_used_rect', args);
  }
  public function getWidth(): Int {
      var args = new ArrayList();
      return native.call('get_width', args);
  }
  public function hasMipmaps(): Bool {
      var args = new ArrayList();
      return native.call('has_mipmaps', args);
  }
  public function isCompressed(): Bool {
      var args = new ArrayList();
      return native.call('is_compressed', args);
  }
  public function isEmpty(): Bool {
      var args = new ArrayList();
      return native.call('is_empty', args);
  }
  public function isInvisible(): Bool {
      var args = new ArrayList();
      return native.call('is_invisible', args);
  }
  public function linearToSrgb(): Void {
      var args = new ArrayList();
      native.call('linear_to_srgb', args);
  }
  public function load(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('load', args);
  }
  public function loadBmpFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_bmp_from_buffer', args);
  }
  public function loadDdsFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_dds_from_buffer', args);
  }
  public static function loadFromFile(path: String): Image {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeReference = NativeObject.callStatic('Image', 'load_from_file', args);
      return new Image(ref);
  }
  public function loadJpgFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_jpg_from_buffer', args);
  }
  public function loadKtxFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_ktx_from_buffer', args);
  }
  public function loadPngFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_png_from_buffer', args);
  }
  public function loadSvgFromBuffer(buffer: ByteArray, ?scale: Float): Int {
      var args = new ArrayList();
      args.append(buffer);
      if (scale != null) {
          args.append(scale);
      }
      return native.call('load_svg_from_buffer', args);
  }
  public function loadSvgFromString(svgStr: String, ?scale: Float): Int {
      var args = new ArrayList();
      args.append(svgStr);
      if (scale != null) {
          args.append(scale);
      }
      return native.call('load_svg_from_string', args);
  }
  public function loadTgaFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_tga_from_buffer', args);
  }
  public function loadWebpFromBuffer(buffer: ByteArray): Int {
      var args = new ArrayList();
      args.append(buffer);
      return native.call('load_webp_from_buffer', args);
  }
  public function normalMapToXy(): Void {
      var args = new ArrayList();
      native.call('normal_map_to_xy', args);
  }
  public function premultiplyAlpha(): Void {
      var args = new ArrayList();
      native.call('premultiply_alpha', args);
  }
  public function resize(width: Int, height: Int, ?interpolation: Int): Void {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      if (interpolation != null) {
          args.append(interpolation);
      }
      native.call('resize', args);
  }
  public function resizeToPo2(?square: Bool, ?interpolation: Int): Void {
      var args = new ArrayList();
      if (square != null) {
          args.append(square);
      }
      if (interpolation != null) {
          args.append(interpolation);
      }
      native.call('resize_to_po2', args);
  }
  public function rgbeToSrgb(): Image {
      var args = new ArrayList();
      var ref: NativeReference = native.call('rgbe_to_srgb', args);
      return new Image(ref);
  }
  public function rotate90(direction: Int): Void {
      var args = new ArrayList();
      args.append(direction);
      native.call('rotate_90', args);
  }
  public function rotate180(): Void {
      var args = new ArrayList();
      native.call('rotate_180', args);
  }
  public function saveDds(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('save_dds', args);
  }
  public function saveDdsToBuffer(): ByteArray {
      var args = new ArrayList();
      return native.call('save_dds_to_buffer', args);
  }
  public function saveExr(path: String, ?grayscale: Bool): Int {
      var args = new ArrayList();
      args.append(path);
      if (grayscale != null) {
          args.append(grayscale);
      }
      return native.call('save_exr', args);
  }
  public function saveExrToBuffer(?grayscale: Bool): ByteArray {
      var args = new ArrayList();
      if (grayscale != null) {
          args.append(grayscale);
      }
      return native.call('save_exr_to_buffer', args);
  }
  public function saveJpg(path: String, ?quality: Float): Int {
      var args = new ArrayList();
      args.append(path);
      if (quality != null) {
          args.append(quality);
      }
      return native.call('save_jpg', args);
  }
  public function saveJpgToBuffer(?quality: Float): ByteArray {
      var args = new ArrayList();
      if (quality != null) {
          args.append(quality);
      }
      return native.call('save_jpg_to_buffer', args);
  }
  public function savePng(path: String): Int {
      var args = new ArrayList();
      args.append(path);
      return native.call('save_png', args);
  }
  public function savePngToBuffer(): ByteArray {
      var args = new ArrayList();
      return native.call('save_png_to_buffer', args);
  }
  public function saveWebp(path: String, ?lossy: Bool, ?quality: Float): Int {
      var args = new ArrayList();
      args.append(path);
      if (lossy != null) {
          args.append(lossy);
      }
      if (quality != null) {
          args.append(quality);
      }
      return native.call('save_webp', args);
  }
  public function saveWebpToBuffer(?lossy: Bool, ?quality: Float): ByteArray {
      var args = new ArrayList();
      if (lossy != null) {
          args.append(lossy);
      }
      if (quality != null) {
          args.append(quality);
      }
      return native.call('save_webp_to_buffer', args);
  }
  public function setData(width: Int, height: Int, useMipmaps: Bool, format: Int, data: ByteArray): Void {
      var args = new ArrayList();
      args.append(width);
      args.append(height);
      args.append(useMipmaps);
      args.append(format);
      args.append(data);
      native.call('set_data', args);
  }
  public function setPixel(x: Int, y: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(x);
      args.append(y);
      args.append(color);
      native.call('set_pixel', args);
  }
  public function setPixelv(point: Vector2i, color: Color): Void {
      var args = new ArrayList();
      args.append(point);
      args.append(color);
      native.call('set_pixelv', args);
  }
  public function shrinkX2(): Void {
      var args = new ArrayList();
      native.call('shrink_x2', args);
  }
  public function srgbToLinear(): Void {
      var args = new ArrayList();
      native.call('srgb_to_linear', args);
  }
}
