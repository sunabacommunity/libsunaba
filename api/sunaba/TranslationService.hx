package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;

class TranslationService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('TranslationServer');
        }
        return _native;
    }

    public static var pseudolocalizationEnabled(get, set): Bool;
    static function get_pseudolocalizationEnabled(): Bool {
        return getNative().get('pseudolocalization_enabled');
    }
    static function set_pseudolocalizationEnabled(value: Bool): Bool {
      getNative().set('pseudolocalization_enabled', value);
        return value;
    }


  public function addTranslation(translation: Translation): Void {
      var args = new ArrayList();
      args.append(translation.native);
      getNative().call('add_translation', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      getNative().call('clear', args);
  }
  public function compareLocales(localeA: String, localeB: String): Int {
      var args = new ArrayList();
      args.append(localeA);
      args.append(localeB);
      return getNative().call('compare_locales', args);
  }
  public function getAllCountries(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_all_countries', args);
  }
  public function getAllLanguages(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_all_languages', args);
  }
  public function getAllScripts(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_all_scripts', args);
  }
  public function getCountryName(country: String): String {
      var args = new ArrayList();
      args.append(country);
      return getNative().call('get_country_name', args);
  }
  public function getLanguageName(language: String): String {
      var args = new ArrayList();
      args.append(language);
      return getNative().call('get_language_name', args);
  }
  public function getLoadedLocales(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_loaded_locales', args);
  }
  public function getLocale(): String {
      var args = new ArrayList();
      return getNative().call('get_locale', args);
  }
  public function getLocaleName(locale: String): String {
      var args = new ArrayList();
      args.append(locale);
      return getNative().call('get_locale_name', args);
  }
  public function getScriptName(script: String): String {
      var args = new ArrayList();
      args.append(script);
      return getNative().call('get_script_name', args);
  }
  public function getToolLocale(): String {
      var args = new ArrayList();
      return getNative().call('get_tool_locale', args);
  }
  public function getTranslationObject(locale: String): Translation {
      var args = new ArrayList();
      args.append(locale);
      var ref: NativeReference = getNative().call('get_translation_object', args);
      return new Translation(ref);
  }
  public function hasDomain(domain: String): Bool {
      var args = new ArrayList();
      args.append(domain);
      return getNative().call('has_domain', args);
  }
  public function pseudolocalize(message: String): String {
      var args = new ArrayList();
      args.append(message);
      return getNative().call('pseudolocalize', args);
  }
  public function reloadPseudolocalization(): Void {
      var args = new ArrayList();
      getNative().call('reload_pseudolocalization', args);
  }
  public function removeDomain(domain: String): Void {
      var args = new ArrayList();
      args.append(domain);
      getNative().call('remove_domain', args);
  }
  public function removeTranslation(translation: Translation): Void {
      var args = new ArrayList();
      args.append(translation.native);
      getNative().call('remove_translation', args);
  }
  public function setLocale(locale: String): Void {
      var args = new ArrayList();
      args.append(locale);
      getNative().call('set_locale', args);
  }
  public function standardizeLocale(locale: String, ?addDefaults: Bool): String {
      var args = new ArrayList();
      args.append(locale);
      if (addDefaults != null) {
          args.append(addDefaults);
      }
      return getNative().call('standardize_locale', args);
  }
  public function translate(message: String, ?context: String): String {
      var args = new ArrayList();
      args.append(message);
      if (context != null) {
          args.append(context);
      }
      return getNative().call('translate', args);
  }
  public function translatePlural(message: String, pluralMessage: String, n: Int, ?context: String): String {
      var args = new ArrayList();
      args.append(message);
      args.append(pluralMessage);
      args.append(n);
      if (context != null) {
          args.append(context);
      }
      return getNative().call('translate_plural', args);
  }
}
