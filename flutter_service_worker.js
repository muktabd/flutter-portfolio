'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "6f46fc2f53f20014d0c1aff7b8f4d06e",
"assets/AssetManifest.bin.json": "c7be57ebd8bce8234182e5a4f5f4c5a2",
"assets/AssetManifest.json": "8af966561e825f3a44649be06ee80b12",
"assets/assets/activity/blood-donors-club.png": "617f36385842dce387d5c6b5a7e1ab62",
"assets/assets/activity/career-talk.png": "303a0334f5f6be235006cef626d4dd47",
"assets/assets/activity/iccp.png": "29a33c5bd1e1233f8e9186fcfd2da632",
"assets/assets/activity/voluntary.png": "fac25a46ebc5b4524e1c5e1764e92e98",
"assets/assets/company/biz_trading.png": "f24413923150157cf73d87ccc2f144e1",
"assets/assets/company/df.jpeg": "8e4cd5c3ad5c882be779b4c31f89ecca",
"assets/assets/company/wehealthwebp.webp": "c0d31e4c081aba9e1514b8ff8fc6f1df",
"assets/assets/data/home_info.json": "1dfb8889f4c734969d5a4faab3a94324",
"assets/assets/data/languages.json": "500aa316d1f96002453a7b171da5664b",
"assets/assets/data/other_social_media.json": "864354f60798540723085b3363ea31f2",
"assets/assets/edu/biz_trading.png": "733ddfc86d91796102958fd7b698cb20",
"assets/assets/edu/fci.png": "fce4b33ecd6d146a5698a5b086886bba",
"assets/assets/edu/graduation.png": "72279936310f960ee2372440bb235d03",
"assets/assets/edu/jhinia.png": "3cc2d4a20be237a6985c3fd92b52f68d",
"assets/assets/edu/utm.png": "1c42f164963731ceb9f3ddf64d3baba5",
"assets/assets/fonts/bengali/NotoSerifBengali-Bold.ttf": "eccf90709f61853a4aa1d184f8e54216",
"assets/assets/fonts/bengali/NotoSerifBengali-Regular.ttf": "7de2929b2584456afd8251c356de1285",
"assets/assets/icons/communicate/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/icons/communicate/gmail.png": "2c1a7560c88ea83e6b2593cd07af8ad8",
"assets/assets/icons/platform/app_store.png": "bc114410ec239dc766d6e8297bac5c51",
"assets/assets/icons/platform/google_play.png": "4cb540492a3b8e9a2f54189721792606",
"assets/assets/icons/platform/huawei_app_gallery.png": "677d72b638c4d8d1f498d62a133cecfc",
"assets/assets/icons/projects/emasa.png": "619c048bcfd5538af4c616ed75ff43df",
"assets/assets/icons/projects/ep_handheld.png": "fe43cb90d1b850c640795d0b516d9d4b",
"assets/assets/icons/projects/komunitiku.png": "7a5af3cc5157dfc1ab1cca6040eed085",
"assets/assets/icons/projects/mdgs.png": "17a419118c1b7cac52dec6d8b9b3a0fa",
"assets/assets/icons/projects/msgs_enforcement.png": "b37b6d6e75f0dbf60f8f06cc7ecfeb71",
"assets/assets/icons/projects/placeholder.png": "3302320614dc077c1b2a350ef7a434a6",
"assets/assets/icons/projects/wehealth.png": "04c153223ac824c4761c7a1471953e67",
"assets/assets/icons/skill/android.png": "c4e9561d1aa88e931c56b67f99e02c60",
"assets/assets/icons/skill/api.png": "3ca5a346684b8ee299c144688f2b80ab",
"assets/assets/icons/skill/flutter.png": "16eff7a040cdb8548202e016a6554c2e",
"assets/assets/icons/skill/lead.png": "c37b390a534f90f5d1521e166385fc30",
"assets/assets/icons/skill/mobile.png": "64d98b189e08e5b5d186de2976a4ce4d",
"assets/assets/icons/skill/nodejs.png": "08ba74c0943fc584b5d9bad7bcf5850f",
"assets/assets/icons/skill/ui.png": "515d92b6638a7c8a8b11316be92cbdb9",
"assets/assets/icons/skill/web.png": "ba31e1e2c01be4fc60e4199ea81d94b4",
"assets/assets/icons/social/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/icons/social/github.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/assets/icons/social/linkedin.png": "d492efc706db983e74258dbd348f2208",
"assets/assets/icons/social/messanger.png": "beacdbb3a93df25674af2f5302f5633a",
"assets/assets/icons/social/stack-overflow.png": "acb71e0f82f275957f59f032221e25d1",
"assets/assets/icons/social/twitter.png": "5a5d5a4acc09b78fff3c9a5d5b72da35",
"assets/assets/icons/social/whatsapp.png": "e33ef8b852729cd9dd7c6af3837f9b23",
"assets/assets/images/background.jpg": "faf1877003e3b09d9dd56fedb85963ff",
"assets/assets/images/background.png": "0614a717659df3fd409c60ff04fac983",
"assets/assets/images/bg_img_2.png": "8257ef89b2dfeab767578260965a7e2d",
"assets/assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/assets/images/desktop.png": "d4794e3ddcb4fce9a2c12246e3b4d8a7",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/images/gmail.png": "2c1a7560c88ea83e6b2593cd07af8ad8",
"assets/assets/images/graphic.png": "d7aaa5a5615483382572b5d5c24c5e5b",
"assets/assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/Hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/Hover_flip.png": "57d317fc22080b316188ebe73407065b",
"assets/assets/images/icons8-sleepy-eyes-96.png": "a8bf3a66b3887b076f23c3871dea9334",
"assets/assets/images/image_placeholder.jpeg": "afc54d59d6906b81ccd750026abb1b7b",
"assets/assets/images/Intreaction_design.png": "98e873648b7c2d3062556f2f8c09d4c3",
"assets/assets/images/mukta.png": "d30fed1ea3997d84aaf14e4faf640c74",
"assets/assets/images/people.png": "f6561cf54d239a098a72225cd21bdc80",
"assets/assets/images/personal_blog.webp": "6adc49a6b59d233d3b47925a9ec7339d",
"assets/assets/images/placeholder.png": "87959055cbdd42527d44c01ba403cd01",
"assets/assets/images/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/assets/images/skill.webp": "40473dfacb5f66be90487e1d7552a970",
"assets/assets/images/ui.png": "6ca82a6c70f80fd75c56b1fe66caa180",
"assets/assets/images/work_3.png": "035401cff7e0fc62875bb280c53523c5",
"assets/assets/images/work_exp.jpeg": "5b060d5edba101b2e61475ba02a32754",
"assets/assets/images/work_exp1.jpeg": "1d9da639de6abd59f857b9977b7ad3dd",
"assets/assets/languages/bn.json": "14375cff8602f653de1f789798d9c08c",
"assets/assets/languages/en.json": "32435f9a8802b5e28db6a4f5aa013746",
"assets/assets/resume/android.png": "98229508d227bb0a3ebb3cead84a9ce8",
"assets/assets/resume/android_studio.png": "b3559c9e5aaa659098fbee5e5b183675",
"assets/assets/resume/android_trans.png": "c4e9561d1aa88e931c56b67f99e02c60",
"assets/assets/resume/api.png": "3ca5a346684b8ee299c144688f2b80ab",
"assets/assets/resume/apidev.jpeg": "a3890e652fe3e6a532c6a7fa55ac2514",
"assets/assets/resume/api_development.png": "3c280e3728cb48dd68b7e46591f49096",
"assets/assets/resume/flutter.webp": "3d41eefd236bc2dc026a460f49e30f22",
"assets/assets/resume/flutter_round.png": "0b4e21bb2144785e4b50794c7ea2d907",
"assets/assets/resume/leaddev.png": "4c48216a27cefaace9837cdd71908f48",
"assets/assets/resume/mobileapp.webp": "8190e8e1de4b09b65f34915019e33277",
"assets/assets/resume/mobile_app.webp": "8190e8e1de4b09b65f34915019e33277",
"assets/assets/resume/nodejs.png": "06dbda05dd70577c875569a3de045e06",
"assets/assets/resume/resume_mukta.pdf": "03eee44996f4c2110243d1aca90c0aba",
"assets/assets/resume/uiux.png": "0185122ef98c68f5fdd3c9672315bb58",
"assets/assets/resume/webapp.png": "fffb49558cce5f6e2d74d011ff757dcc",
"assets/assets/resume/web_application.gif": "d834409fb503652d59448240e3c8318f",
"assets/FontManifest.json": "8270e06ea4d8fcc804d9f74d609d12da",
"assets/fonts/MaterialIcons-Regular.otf": "e9e440f60fab2bf447434ab2c41a6c6a",
"assets/NOTICES": "55e9e07ae81d78bb36683c103e03747b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "d64f8143a6d9cfb5f4d358a1b86d55d1",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "85da81db08efbb661067c11063c4abd1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0331b7ae35b4fac23a04b4c8b0b25234",
"/": "0331b7ae35b4fac23a04b4c8b0b25234",
"main.dart.js": "0fbc54d1d49aecfbe9a6fb5802ed443f",
"manifest.json": "fc7ab5d9dcbef44cc28d01c52d6132b1",
"styles.css": "f274130ae235d38768ddfecffdb8b76f",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
