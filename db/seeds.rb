big_url = [
          ["Google Search", "https://www.google.com/webhp?source=search_app#q=this+is+a+hella+long+article"],
          ["Gmail", "https://accounts.google.com/ServiceLogin?service=mail&passive=true&rm=false&continue=https://mail.google.com/mail/&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1"],
          ["Big Ass Url", "http://this.is.a.world.wide.web.site.that.will.generate.for.you.a.bigassurl.com/"],
          ["Google", "http://x7kg9x5vpfk7accvyvccea.uc4tp0z1ghwiq4srjym7ux1g5j1lyieecizbuu4czy1pxelatntuxhs.vhmodkxzhsla0whmrwpwababk2n7iz9a2y9bghd1.bigassurl.com/O4PxjCunSEAbcl7tc9qb7xhGvpSfHKyoO1ArcWiZgAlV4xQ/9WRGkjwB7vKo6q3BcSyV0EkCuIRS4/X7fbXEk5kY0059WeC5m89sRPoaBitGm/vP3rRUcVhKLJX/8WlZCnynh9aIAXKXbbdRR718zhl4nffs8ikFPFXbPEdEVVGBPRlXhVqKHIhBbg/6t4YY7wQEG55VaqPcKbWtPxodflBjb6cV9tkmUm0WHSSsJgOwOi9Oj4nya6OoCOLCFlEiicD"],
          ["Miley Cyrus Youtube Search", "https://www.youtube.com/results?search_query=mily+cyrus+you+are+crazy&oq=mily+cyrus+you+are+crazy&gs_l=youtube.3...8717.12978.0.13179.24.24.0.0.0.0.146.2066.16j8.24.0...0.0...1ac.1.11.youtube.DEZmZSUXRDQ"]
          ]

big_url.each do |title, url|
  Url.create(:title => title, :long_url => url)
end