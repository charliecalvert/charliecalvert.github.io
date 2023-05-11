# Update Repo

Go to this file:

- $GIT_HOME/CloudNotes/lib/walk-markdown-files.mjs
- Add match **const isMatch = (...)**

Go to this file:

- $GIT_HOME/CloudNotes/lib/guide-objects-caps.mjs
- be sure you have an object defining the value used in the match.
Run the appropriate script from this directory: [/home/ubuntu/Git/charliecalvert.github.io/scripts](/home/ubuntu/Git/charliecalvert.github.io/scripts)

in the scripts directorythere are four files. On the local machine, run **copy-to-aws.sh**. This will copy the numbered files to the server and also and also copythe ZIP file containing the keys.

On the remote machine run the other three scripts in order.

## Message After Bundle Install

I get this message after running **bundle install**. I'm not sure exactly what it means.

Installing sassc 2.4.0 with native extensions

Fetching webrick 1.8.1
Installing webrick 1.8.1
Bundle complete! 9 Gemfile dependencies, 93 gems now installed.
Bundled gems are installed into `./vendor/bundle`
Post-install message from dnsruby:
Installing dnsruby...
  For issues and source code: [https://github.com/alexdalitz/dnsruby](https://github.com/alexdalitz/dnsruby)
  For general discussion (please tell us how you use dnsruby): [https://groups.google.com/forum/#!forum/dnsruby](https://groups.google.com/forum/#!forum/dnsruby)

Post-install message from sass:

Ruby Sass has reached end-of-life and should no longer be used.

- If you use Sass as a command-line tool, we recommend using Dart Sass, the new
  primary implementation: [https://sass-lang.com/install
](https://sass-lang.com/install)
- If you use Sass as a plug-in for a Ruby web framework, we recommend using the
  sassc gem: [https://github.com/sass/sassc-ruby#readme](https://github.com/sass/sassc-ruby#readme)
- For more details, please refer to the Sass blog:
  [https://sass-lang.com/blog/posts/7828841](https://sass-lang.com/blog/posts/7828841)

Post-install message from html-pipeline:

```text
Thank you for installing html-pipeline!
You must bundle Filter gem dependencies.
See html-pipeline README.md for more details.
```

- [https://github.com/jch/html-pipeline#dependencies](https://github.com/jch/html-pipeline#dependencies)

Post-install message from rubyzip:
RubyZip 3.0 is coming!

The public API of some Rubyzip classes has been modernized to use named parameters for optional arguments. Please check your usage of the following classes:

- `Zip::File`
- `Zip::Entry`
- `Zip::InputStream`
- `Zip::OutputStream`

Please ensure that your Gemfiles and .gemspecs are suitably restrictive
to avoid an unexpected breakage when 3.0 is released (e.g. ~> 2.3.0).
See [https://github.com/rubyzip/rubyzip](https://github.com/rubyzip/rubyzip) for details. The Changelog also
lists other enhancements and bugfixes that have been implemented since
version 2.3.0.

## CertBot

ubuntu@ip-172-31-0-247:/etc/nginx/sites-enabled$ sudo certbot --nginx
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Please enter the domain name(s) you would like on your certificate (comma and/or
space separated) (Enter 'c' to cancel): [calvert.work](https://www.calvert.work)
Requesting a certificate for calvert.work and [https://www.calvert.work](https://www.calvert.work)

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/calvert.work/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/calvert.work/privkey.pem
This certificate expires on 2023-07-29.
These files will be updated when the certificate renews.
Certbot has set up a scheduled task to automatically renew this certificate in the background.

Deploying certificate
Successfully deployed certificate for calvert.work to /etc/nginx/sites-enabled/default
Successfully deployed certificate for [http://www.calvert.work](http://www.calvert.work) to /etc/nginx/sites-enabled/default
Congratulations! You have successfully enabled HTTPS on [https://calvert.work](https://calvert.work) and [https://www.calvert.work](https://www.calvert.work)

If you like Certbot, please consider supporting our work by:

- Donating to ISRG / Let's Encrypt: [https://letsencrypt.org/donate](https://letsencrypt.org/donate)
- Donating to EFF: [https://eff.org/donate-le](https://eff.org/donate-le)
