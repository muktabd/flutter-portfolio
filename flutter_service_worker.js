'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d040400c1491c239e382998f833c8023",
"assets/AssetManifest.bin.json": "14a54284d36821242070d04b6be1f3a6",
"assets/AssetManifest.json": "6cfe72e6868a2027bf6a65832ad7e3e8",
"assets/assets/activity/blood-donors-club.png": "617f36385842dce387d5c6b5a7e1ab62",
"assets/assets/activity/career-talk.png": "303a0334f5f6be235006cef626d4dd47",
"assets/assets/activity/iccp.png": "29a33c5bd1e1233f8e9186fcfd2da632",
"assets/assets/activity/voluntary.png": "fac25a46ebc5b4524e1c5e1764e92e98",
"assets/assets/company/biz_trading.png": "f24413923150157cf73d87ccc2f144e1",
"assets/assets/company/df.jpeg": "8e4cd5c3ad5c882be779b4c31f89ecca",
"assets/assets/company/wehealthwebp.webp": "c0d31e4c081aba9e1514b8ff8fc6f1df",
"assets/assets/data/home_info.json": "a6fcdb6e068f361dcc4cec2af15a8296",
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
"assets/assets/images/bikrinaki.webp": "a9ed9b3c7d5eb757beb316c1059f85fc",
"assets/assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/assets/images/desktop.png": "d4794e3ddcb4fce9a2c12246e3b4d8a7",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/images/etapwebp.webp": "af30c2fbe88828f5f6abd827ca724aa0",
"assets/assets/images/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/images/forcarwebp.webp": "a8a19a39b455471181d6c5592d3f44b5",
"assets/assets/images/github.png": "3d4c7482f267f5accbb7461766f3f790",
"assets/assets/images/gmail.png": "2c1a7560c88ea83e6b2593cd07af8ad8",
"assets/assets/images/graphic.png": "d7aaa5a5615483382572b5d5c24c5e5b",
"assets/assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/Hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/Hover_flip.png": "57d317fc22080b316188ebe73407065b",
"assets/assets/images/icons8-sleepy-eyes-96.png": "a8bf3a66b3887b076f23c3871dea9334",
"assets/assets/images/image_placeholder.jpeg": "afc54d59d6906b81ccd750026abb1b7b",
"assets/assets/images/Intreaction_design.png": "98e873648b7c2d3062556f2f8c09d4c3",
"assets/assets/images/linkedin.png": "d492efc706db983e74258dbd348f2208",
"assets/assets/images/messanger.png": "beacdbb3a93df25674af2f5302f5633a",
"assets/assets/images/mukta.png": "53f17e2f15b9bb9363f4813b1ca7a0a2",
"assets/assets/images/mukta22.png": "f87b332e77b2057a72f25f1bae6a8575",
"assets/assets/images/olgawebp.webp": "a4bf7b5d5f4fc38ce037259c36dfe02d",
"assets/assets/images/people.png": "f6561cf54d239a098a72225cd21bdc80",
"assets/assets/images/personal_blog.webp": "6adc49a6b59d233d3b47925a9ec7339d",
"assets/assets/images/placeholder.png": "87959055cbdd42527d44c01ba403cd01",
"assets/assets/images/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/assets/images/skill.webp": "40473dfacb5f66be90487e1d7552a970",
"assets/assets/images/skype.png": "955d4329bf55cd47008c2edd6c08ad99",
"assets/assets/images/socookwebp.webp": "db715c4dbc765864766fa0f6e2be41f4",
"assets/assets/images/stack-overflow.png": "acb71e0f82f275957f59f032221e25d1",
"assets/assets/images/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/assets/images/ui.png": "6ca82a6c70f80fd75c56b1fe66caa180",
"assets/assets/images/wehealthwebp.webp": "c0d31e4c081aba9e1514b8ff8fc6f1df",
"assets/assets/images/whatsapp.png": "e33ef8b852729cd9dd7c6af3837f9b23",
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
"assets/fonts/MaterialIcons-Regular.otf": "eb410de36fbf145ba8c5e9899d2e1b43",
"assets/NOTICES": "f2902e40fe3845058ea8131af6acd7e7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "d64f8143a6d9cfb5f4d358a1b86d55d1",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "0b374e40d18b4f21cdcc38e3a6e5273b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "30aa09ee2e17288cb6acbd47b4ae4910",
"/": "30aa09ee2e17288cb6acbd47b4ae4910",
"main.dart.js": "01ba7128a3fc6721d7aabb5584536fa7",
"manifest.json": "c9bb0503b591d8d479d473a8daa69163",
"styles.css": "f274130ae235d38768ddfecffdb8b76f",
"version.json": "c420e205d8eac4ccea99913b4a50bfa7"};
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
