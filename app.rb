require 'sinatra'
require 'httparty'
require 'json'

get '/rodbot' do
  content_type :json
  { 'text' => random_gif_url,
    'response_type' => 'in_channel'
  }.to_json
end

def random_gif_url
  all_gif_urls[rand(all_gif_urls.length)].to_s
end

def all_gif_urls
  ['http://67.media.tumblr.com/6b5110cd7d7ca17b3210b3d4d89232d3/tumblr_oca4sreR4Z1rscte8o1_500.gif',
    'http://66.media.tumblr.com/8eb912bc0cc40eb6f75da426d20ddd05/tumblr_oc9xqkyyxV1rscte8o1_500.gif',
    'http://66.media.tumblr.com/8550d21fd461c368ed3fa6de289f9538/tumblr_oc9xf7A2Hw1rscte8o1_500.gif',
    'http://66.media.tumblr.com/d1ab6bea8f89fa9f9d3a3047f11ed62d/tumblr_oc9wybkYVs1rscte8o1_500.gif',
    'http://66.media.tumblr.com/b3810bac7a8f1da9343bb1582315b05a/tumblr_oc9wtai2nw1rscte8o1_500.gif',
    'http://66.media.tumblr.com/fb94d08455e40227e6fab6f5ca16439f/tumblr_oc8cjew0qx1rscte8o1_500.gif',
    'http://67.media.tumblr.com/21208c94d65e93fc25fc76624819c1e1/tumblr_obwzkhkS0w1rscte8o1_500.gif',
    'http://66.media.tumblr.com/7144ec696a2207355fb3cc7a1a83a558/tumblr_obwzfnlfIS1rscte8o1_500.gif',
    'http://66.media.tumblr.com/f8516422fb195e1ab9e606fc37997ba3/tumblr_obwzbySaOJ1rscte8o1_500.gif',
    'http://66.media.tumblr.com/6f83384f195dc08a862480b0968bd61f/tumblr_obwz8hidpH1rscte8o1_500.gif',
    'http://67.media.tumblr.com/d85caf4ba60b79ee19481ba05e8c82a0/tumblr_obk8v3UhqJ1rscte8o1_500.gif',
    'http://67.media.tumblr.com/aa3564ef8cf793f5b5849be8fb108b88/tumblr_obk4l3p6mV1rscte8o1_500.gif',
    'http://66.media.tumblr.com/e94483b0dc0500230bc28159a6ba6928/tumblr_obirtee7ee1rscte8o1_500.gif',
    'http://67.media.tumblr.com/3282201a6ecd977a60d29c23333fb487/tumblr_obigioXp5Z1rscte8o1_500.gif',
    'http://66.media.tumblr.com/ebfa7554e1a3edf6eee3e090e9193f8c/tumblr_obifqaMgt91rscte8o1_500.gif',
    'http://67.media.tumblr.com/9be650948c3f1ee0ce08458103577452/tumblr_o9eobng0x11rscte8o1_500.gif',
    'http://67.media.tumblr.com/172ebe562d35c4c9aeb8e334f9097f35/tumblr_o9d2xxbAU41rscte8o1_500.gif',
    'http://67.media.tumblr.com/909b3d3d66c9bcdbb7f1d237219a2265/tumblr_o9cmi4owRC1rscte8o1_500.gif',
    'http://66.media.tumblr.com/925ed3bfa0aa1cc062ee00978e505ce7/tumblr_o91uk7hPGF1rscte8o1_500.gif',
    'http://67.media.tumblr.com/6ed54a112e2151f6ad144e6bda70805e/tumblr_o91c8o7VRG1rscte8o1_500.gif',
    'http://67.media.tumblr.com/6a7f15a4eb099c631027ec730c9b41c0/tumblr_o8oa6fGAbw1rscte8o1_500.gif',
    'http://67.media.tumblr.com/28eb884bfbe254f071dacf638b55e71c/tumblr_o8bw9vAXhz1rscte8o1_500.gif',
    'http://67.media.tumblr.com/22566cd41f4965ef341c1483a4053f2d/tumblr_o7z0ywPZVD1rscte8o1_500.gif',
    'http://66.media.tumblr.com/a8cd24ca4e850e917e2a12db79456b3b/tumblr_o7yglkRYJj1rscte8o1_500.gif',
    'http://66.media.tumblr.com/3480ffceddf034316c41dfec7f40f976/tumblr_o7cbyo9LRt1rscte8o1_500.gif',
    'http://67.media.tumblr.com/53dfc47981342fdb24bc174fbde79cc5/tumblr_o7cbtmN3WY1rscte8o1_500.gif',
    'http://66.media.tumblr.com/3c98b42111f0b2e2b069895e1657ca98/tumblr_o7cbqgcKqz1rscte8o1_500.gif',
    'http://66.media.tumblr.com/c077e4cbefcb7099acf89e73f0661277/tumblr_o7cbmyOGt01rscte8o1_500.gif',
    'http://66.media.tumblr.com/bf3a962b05f8c6adadd22a046ba94295/tumblr_o6tnn15IZv1rscte8o1_500.gif',
    'http://67.media.tumblr.com/c088d7d1e5375964d41fdefc82ac58a7/tumblr_o6gzolKl3n1rscte8o1_500.gif',
    'http://67.media.tumblr.com/72e70e36773617f771604d992f6ae8fa/tumblr_o6gzk5GubO1rscte8o1_500.gif',
    'http://66.media.tumblr.com/c9d07016244f3672092e8b9c479f09b6/tumblr_o6gzgvRuME1rscte8o1_500.gif',
    'http://67.media.tumblr.com/f4fb989b6af3e5c8cc75cf95065316f3/tumblr_o6gzdj3jXf1rscte8o1_500.gif',
    'http://66.media.tumblr.com/5b2db40cd0af0e17e181218d4763ba71/tumblr_o6676kDD5H1rscte8o1_500.gif',
    'http://66.media.tumblr.com/1cde87c9092c8b702d4a73348a298d25/tumblr_o664ooKJH71rscte8o1_500.gif',
    'http://66.media.tumblr.com/e17994f18f1e389d9327ca144a828aec/tumblr_o664l5g5q51rscte8o1_500.gif',
    'http://67.media.tumblr.com/114445f8dcd5590e0a0f2a597f99efc0/tumblr_o664isfSAX1rscte8o1_500.gif',
    'http://66.media.tumblr.com/fc1f8ffdd59d3f2ade33a3e590ab9afb/tumblr_o5qrvdXVXB1rscte8o1_500.jpg',
    'http://67.media.tumblr.com/6fcd4f299beedda7fa3aad9e88395aee/tumblr_o5fwe1dnLP1rscte8o1_500.jpg',
    'http://67.media.tumblr.com/e06abe55aa0db7d08061ab530c0eda34/tumblr_o5dywaOzMX1rscte8o1_500.gif',
    'http://66.media.tumblr.com/286cf5a5ff2a322a41b736135f2c0cf9/tumblr_o40h3k3Chf1rscte8o1_500.gif',
    'http://67.media.tumblr.com/885f82fb8a54015b9e6d74e130b6a5c0/tumblr_o40gbbZ7tc1rscte8o1_500.gif',
    'http://67.media.tumblr.com/e14f9e0b301679ad8743a9d542e9e0f9/tumblr_o3nhi5IWZ11rscte8o1_500.gif',
    'http://66.media.tumblr.com/905fce4021af69973c31b6099f14a90e/tumblr_o3ncxmMeFn1rscte8o1_500.gif',
    'http://66.media.tumblr.com/c8cb91fd020152b8f6f351a1899282a1/tumblr_o3n56ny21W1rscte8o1_500.gif',
    'http://66.media.tumblr.com/7ecfdee9c9f19a0fc27543bb068f0a91/tumblr_o3n38yeS2W1rscte8o1_500.gif',
    'http://66.media.tumblr.com/f4223a8ec372ae77b408bd633935ad03/tumblr_o3lb5gH1wD1rscte8o1_500.gif',
    'http://66.media.tumblr.com/dfc548c065bf9b3339c8b3d3a80e3b1b/tumblr_o3l8xqgQ4n1rscte8o1_500.gif',
    'http://67.media.tumblr.com/90d10981f567ec77252189aafe69b6aa/tumblr_o3l84neva91rscte8o1_500.gif',
    'http://67.media.tumblr.com/53a6ea23699d124340a027d69fd02fed/tumblr_o3a2ae97rJ1rscte8o1_500.gif',
    'http://66.media.tumblr.com/9556d3d0436644271ba66aa2b34aafc2/tumblr_o2x7mkBUs21rscte8o1_500.gif',
    'http://66.media.tumblr.com/dc800db50495ffe1dcd1c291a359b6c6/tumblr_o2x6b33Yrp1rscte8o1_500.gif',
    'http://67.media.tumblr.com/725285601bce17cb30e76d2f9b33177f/tumblr_o2wtce2gXx1rscte8o1_500.gif',
    'http://67.media.tumblr.com/6add5128f4f8c6f0ef4732e557262f4c/tumblr_o2km3hIUy81rscte8o1_500.gif',
    'http://66.media.tumblr.com/14fa9111ed9515348d3585308c14b306/tumblr_o2klzbHg721rscte8o1_500.gif',
    'http://66.media.tumblr.com/ed6c78b4034a6c948cf744f7f0d6c66c/tumblr_o2778liFUD1rscte8o1_500.gif',
    'http://67.media.tumblr.com/571ca95fc50ae0d60e24f7b0b33f2a3e/tumblr_o26xc75byo1rscte8o1_500.gif']
end
