[Назад к примеру](/1-ruby-does-not-follow-semver)

---

Подготовка к запуску: `bundle install`

Запуск: `bundle exec rake`

Ожидаемый вывод:

```
bundle exec /home/kotovalexarian/repos/global/causa-arcana/lesson-ruby3/1-ruby-does-not-follow-semver/ruby2.7/main.rb
bundler: failed to load command: /home/kotovalexarian/repos/global/causa-arcana/lesson-ruby3/1-ruby-does-not-follow-semver/ruby2.7/main.rb (/home/kotovalexarian/repos/global/causa-arcana/lesson-ruby3/1-ruby-does-not-follow-semver/ruby2.7/main.rb)
Traceback (most recent call last):
	15: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/bin/bundle:23:in `<main>'
	14: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/bin/bundle:23:in `load'
	13: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/exe/bundle:37:in `<top (required)>'
	12: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/friendly_errors.rb:128:in `with_friendly_errors'
	11: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/exe/bundle:49:in `block in <top (required)>'
	10: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli.rb:24:in `start'
	 9: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/vendor/thor/lib/thor/base.rb:485:in `start'
	 8: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli.rb:30:in `dispatch'
	 7: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/vendor/thor/lib/thor.rb:392:in `dispatch'
	 6: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/vendor/thor/lib/thor/invocation.rb:127:in `invoke_command'
	 5: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
	 4: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli.rb:474:in `exec'
	 3: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli/exec.rb:28:in `run'
	 2: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli/exec.rb:63:in `kernel_load'
	 1: from /home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/bundler-2.2.21/lib/bundler/cli/exec.rb:63:in `load'
/home/kotovalexarian/repos/global/causa-arcana/lesson-ruby3/1-ruby-does-not-follow-semver/ruby2.7/main.rb:5:in `<top (required)>': undefined method `new' for BigDecimal:Class (NoMethodError)
rake aborted!
Command failed with status (1): [bundle exec /home/kotovalexarian/repos/glo...]
/home/kotovalexarian/repos/global/causa-arcana/lesson-ruby3/1-ruby-does-not-follow-semver/ruby2.7/Rakefile:2:in `block in <top (required)>'
/home/kotovalexarian/.rvm/gems/ruby-2.7.3/gems/rake-13.0.3/exe/rake:27:in `<top (required)>'
Tasks: TOP => default
(See full trace by running task with --trace)
```
