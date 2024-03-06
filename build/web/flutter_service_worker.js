'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "15ba73c4672c2b54b74be52f96ae9e5a",
"index.html": "531f34f8b9a9b7c6aec1408ff83b6abb",
"/": "531f34f8b9a9b7c6aec1408ff83b6abb",
"main.dart.js": "a9d5b1a55269f676542279343763d839",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/favicon-16x16.png": "64c8cf29bda9df1bd25d7703fe0105e6",
"icons/favicon.ico": "58c22e3da232d2526cad32b5f6296e87",
"icons/apple-icon.png": "a623ff03180b3e2de494b46445071049",
"icons/apple-icon-144x144.png": "91e935984d8882b30dac611e79bb34c2",
"icons/android-icon-192x192.png": "80627c2e2cca6ad7f78a80543f63b34c",
"icons/apple-icon-precomposed.png": "a623ff03180b3e2de494b46445071049",
"icons/apple-icon-114x114.png": "1b81670f9b99162faab3d2220edaa9f5",
"icons/ms-icon-310x310.png": "84d97980f465f7c64ec98352011f199d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/ms-icon-144x144.png": "91e935984d8882b30dac611e79bb34c2",
"icons/apple-icon-57x57.png": "00bd33c8b46ba82c5b2130f0274e004c",
"icons/apple-icon-152x152.png": "cead997825193ffeae3342bc09067537",
"icons/ms-icon-150x150.png": "fcb1e39877985d32ab26c7b48bd5478e",
"icons/android-icon-72x72.png": "50f7b2089050ece08d972b845b111f45",
"icons/android-icon-96x96.png": "5fc721ed24e3b1ada7ceaa5a4eced2f0",
"icons/android-icon-36x36.png": "4895b3a48ac825f5e0973e7f31668e90",
"icons/apple-icon-180x180.png": "3919237f8fae69b4e6d2adbd22018d9e",
"icons/favicon-96x96.png": "5fc721ed24e3b1ada7ceaa5a4eced2f0",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-48x48.png": "f551b242bf78c72099620c0c71b3694c",
"icons/apple-icon-76x76.png": "d1dcc611f367fa6a8bea329ca4e815b4",
"icons/apple-icon-60x60.png": "2481f1afb9d58b7d9d0ac762fd80cbd6",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/android-icon-144x144.png": "91e935984d8882b30dac611e79bb34c2",
"icons/apple-icon-72x72.png": "50f7b2089050ece08d972b845b111f45",
"icons/apple-icon-120x120.png": "34d572131ef88f08dd8104c3b5cfd843",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/favicon-32x32.png": "46483b6ab26418546c52dfe0ae3ac477",
"icons/ms-icon-70x70.png": "268d221bae14dfaf11d8ab810a1ae35d",
"manifest.json": "8b379216215c0663f582ab12da1a3644",
"assets/AssetManifest.json": "4680cd3a30c666fde3dce44fb3fa871e",
"assets/NOTICES": "4ad790aa8471f41bd876135f4cbab100",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "c5fadddaf99a9ba2a000d9f5a524cf99",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/fluttertoast/assets/toastify.js": "18cfdd77033aa55d215e8a78c090ba89",
"assets/packages/fluttertoast/assets/toastify.css": "910ddaaf9712a0b0392cf7975a3b7fb5",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "aa5fb6967e2841b2ab61cb5098c15a2c",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/assets/images/icon-whatsapp.png": "bc7bc679fe4cb3341d5bf936dfabc223",
"assets/assets/images/profile-image.png": "5daca6595db7264208c75bab26ad36b6",
"assets/assets/images/about-image.png": "d456d210bf7d5feb5ec7dab923a15d79",
"assets/assets/images/ayocas-image.png": "2b2f94946fda7ff288cf860070f9b3d3",
"assets/assets/images/dots.png": "c539a22bf75ef5bbe827bec54bdf625c",
"assets/assets/images/pln-image.png": "477589d3feefde21b31e09d36af886c1",
"assets/assets/images/logo.png": "22780c60b8889d1e29397a9dd2086614",
"assets/assets/images/libra-image.png": "653eaf6447fe0bd1d8cca7b491c7f399",
"assets/assets/images/marketplace-image.png": "44d69d48680ccca2acc7b91ac54e3684",
"assets/assets/images/iconcash-image.png": "57089c60eee3f3875b58e6503e0dda64",
"assets/assets/icons/icon-linkedin.svg": "6d63780b605923038c6f8aac0a299314",
"assets/assets/icons/icon-github.svg": "d3e023b0373d3c9787e9d236381a30d0",
"assets/assets/icons/icon-abstract.svg": "bdcbe49a01d0b01b8b8133c1f9b2fc65",
"assets/assets/icons/icon-quotes.svg": "2b1a465936cdb01262fe906fce3d3e59",
"assets/assets/icons/icon-email.svg": "6d42e9efb8762a0709e9d66c3a62b512",
"assets/assets/icons/icon-more.svg": "69ba9da3395b8d92e963d31368893e63",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
