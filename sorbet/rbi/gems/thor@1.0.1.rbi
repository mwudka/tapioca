# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca sync

# typed: true

class Thor
  include(::Thor::Base)
  include(::Thor::Invocation)
  include(::Thor::Shell)
  extend(::Thor::Base::ClassMethods)
  extend(::Thor::Invocation::ClassMethods)

  def help(command = _, subcommand = _); end

  def self.check_unknown_options!(options = _); end
  def self.check_unknown_options?(config); end
  def self.command_help(shell, command_name); end
  def self.default_command(meth = _); end
  def self.default_task(meth = _); end
  def self.deprecation_warning(message); end
  def self.desc(usage, description, options = _); end
  def self.disable_required_check!(*command_names); end
  def self.disable_required_check?(command); end
  def self.help(shell, subcommand = _); end
  def self.long_desc(long_description, options = _); end
  def self.map(mappings = _, **kw); end
  def self.method_option(name, options = _); end
  def self.method_options(options = _); end
  def self.option(name, options = _); end
  def self.options(options = _); end
  def self.package_name(name, _ = _); end
  def self.printable_commands(all = _, subcommand = _); end
  def self.printable_tasks(all = _, subcommand = _); end
  def self.register(klass, subcommand_name, usage, description, options = _); end
  def self.stop_on_unknown_option!(*command_names); end
  def self.stop_on_unknown_option?(command); end
  def self.subcommand(subcommand, subcommand_class); end
  def self.subcommand_classes; end
  def self.subcommands; end
  def self.subtask(subcommand, subcommand_class); end
  def self.subtasks; end
  def self.task_help(shell, command_name); end
end

module Thor::Actions
  mixes_in_class_methods(::Thor::Actions::ClassMethods)

  def initialize(args = _, options = _, config = _); end

  def action(instance); end
  def add_file(destination, *args, &block); end
  def add_link(destination, *args); end
  def append_file(path, *args, &block); end
  def append_to_file(path, *args, &block); end
  def apply(path, config = _); end
  def behavior; end
  def behavior=(_); end
  def chmod(path, mode, config = _); end
  def comment_lines(path, flag, *args); end
  def copy_file(source, *args, &block); end
  def create_file(destination, *args, &block); end
  def create_link(destination, *args); end
  def destination_root; end
  def destination_root=(root); end
  def directory(source, *args, &block); end
  def empty_directory(destination, config = _); end
  def find_in_source_paths(file); end
  def get(source, *args, &block); end
  def gsub_file(path, flag, *args, &block); end
  def in_root; end
  def inject_into_class(path, klass, *args, &block); end
  def inject_into_file(destination, *args, &block); end
  def inject_into_module(path, module_name, *args, &block); end
  def insert_into_file(destination, *args, &block); end
  def inside(dir = _, config = _, &block); end
  def link_file(source, *args); end
  def prepend_file(path, *args, &block); end
  def prepend_to_file(path, *args, &block); end
  def relative_to_original_destination_root(path, remove_dot = _); end
  def remove_dir(path, config = _); end
  def remove_file(path, config = _); end
  def run(command, config = _); end
  def run_ruby_script(command, config = _); end
  def source_paths; end
  def template(source, *args, &block); end
  def thor(command, *args); end
  def uncomment_lines(path, flag, *args); end

  protected

  def _cleanup_options_and_set(options, key); end
  def _shared_configuration; end

  private

  def capture(*args); end
  def concat(string); end
  def output_buffer; end
  def output_buffer=(_); end
  def with_output_buffer(buf = _); end

  def self.included(base); end
end

class Thor::Actions::CapturableERB < ::ERB
  def set_eoutvar(compiler, eoutvar = _); end
end

module Thor::Actions::ClassMethods
  def add_runtime_options!; end
  def source_paths; end
  def source_paths_for_search; end
  def source_root(path = _); end
end

class Thor::Actions::CreateFile < ::Thor::Actions::EmptyDirectory
  def initialize(base, destination, data, config = _); end

  def data; end
  def identical?; end
  def invoke!; end
  def render; end

  protected

  def force_on_collision?; end
  def force_or_skip_or_conflict(force, skip, &block); end
  def on_conflict_behavior(&block); end
end

class Thor::Actions::CreateLink < ::Thor::Actions::CreateFile
  def data; end
  def exists?; end
  def identical?; end
  def invoke!; end
end

class Thor::Actions::Directory < ::Thor::Actions::EmptyDirectory
  def initialize(base, source, destination = _, config = _, &block); end

  def invoke!; end
  def revoke!; end
  def source; end

  protected

  def execute!; end
  def file_level_lookup(previous_lookup); end
  def files(lookup); end
end

class Thor::Actions::EmptyDirectory
  def initialize(base, destination, config = _); end

  def base; end
  def config; end
  def destination; end
  def exists?; end
  def given_destination; end
  def invoke!; end
  def relative_destination; end
  def revoke!; end

  protected

  def convert_encoded_instructions(filename); end
  def destination=(destination); end
  def invoke_with_conflict_check(&block); end
  def on_conflict_behavior; end
  def on_file_clash_behavior; end
  def pretend?; end
  def say_status(status, color); end
end

class Thor::Actions::InjectIntoFile < ::Thor::Actions::EmptyDirectory
  def initialize(base, destination, data, config); end

  def behavior; end
  def flag; end
  def invoke!; end
  def replacement; end
  def revoke!; end

  protected

  def replace!(regexp, string, force); end
  def say_status(behavior, warning: _, color: _); end
end

Thor::Actions::WARNINGS = T.let(T.unsafe(nil), Hash)

class Thor::AmbiguousCommandError < ::Thor::Error
end

Thor::AmbiguousTaskError = Thor::AmbiguousCommandError

class Thor::Argument
  def initialize(name, options = _); end

  def banner; end
  def default; end
  def description; end
  def enum; end
  def human_name; end
  def name; end
  def required; end
  def required?; end
  def show_default?; end
  def type; end
  def usage; end

  protected

  def default_banner; end
  def valid_type?(type); end
  def validate!; end
end

Thor::Argument::VALID_TYPES = T.let(T.unsafe(nil), Array)

class Thor::Arguments
  def initialize(arguments = _); end

  def parse(args); end
  def remaining; end

  private

  def check_requirement!; end
  def current_is_value?; end
  def last?; end
  def no_or_skip?(arg); end
  def parse_array(name); end
  def parse_hash(name); end
  def parse_numeric(name); end
  def parse_string(name); end
  def peek; end
  def shift; end
  def unshift(arg); end

  def self.parse(*args); end
  def self.split(args); end
end

Thor::Arguments::NUMERIC = T.let(T.unsafe(nil), Regexp)

module Thor::Base
  include(::Thor::Invocation)
  include(::Thor::Shell)

  mixes_in_class_methods(::Thor::Base::ClassMethods)

  def initialize(args = _, local_options = _, config = _); end

  def args; end
  def args=(_); end
  def options; end
  def options=(_); end
  def parent_options; end
  def parent_options=(_); end

  def self.included(base); end
  def self.register_klass_file(klass); end
  def self.shell; end
  def self.shell=(_); end
  def self.subclass_files; end
  def self.subclasses; end
end

module Thor::Base::ClassMethods
  def all_commands; end
  def all_tasks; end
  def allow_incompatible_default_type!; end
  def argument(name, options = _); end
  def arguments; end
  def attr_accessor(*_); end
  def attr_reader(*_); end
  def attr_writer(*_); end
  def check_default_type; end
  def check_default_type!; end
  def check_unknown_options; end
  def check_unknown_options!; end
  def check_unknown_options?(config); end
  def class_option(name, options = _); end
  def class_options(options = _); end
  def commands; end
  def disable_required_check?(command_name); end
  def exit_on_failure?; end
  def group(name = _); end
  def handle_argument_error(command, error, args, arity); end
  def handle_no_command_error(command, has_namespace = _); end
  def handle_no_task_error(command, has_namespace = _); end
  def namespace(name = _); end
  def no_commands(&block); end
  def no_commands?; end
  def no_commands_context; end
  def no_tasks(&block); end
  def public_command(*names); end
  def public_task(*names); end
  def remove_argument(*names); end
  def remove_class_option(*names); end
  def remove_command(*names); end
  def remove_task(*names); end
  def start(given_args = _, config = _); end
  def stop_on_unknown_option?(command_name); end
  def strict_args_position; end
  def strict_args_position!; end
  def strict_args_position?(config); end
  def tasks; end

  protected

  def baseclass; end
  def basename; end
  def build_option(name, options, scope); end
  def build_options(options, scope); end
  def class_options_help(shell, groups = _); end
  def create_command(meth); end
  def create_task(meth); end
  def dispatch(command, given_args, given_opts, config); end
  def find_and_refresh_command(name); end
  def find_and_refresh_task(name); end
  def from_superclass(method, default = _); end
  def inherited(klass); end
  def initialize_added; end
  def is_thor_reserved_word?(word, type); end
  def method_added(meth); end
  def print_options(shell, options, group_name = _); end
end

class Thor::Command < ::Struct
  def initialize(name, description, long_description, usage, options = _); end

  def formatted_usage(klass, namespace = _, subcommand = _); end
  def hidden?; end
  def run(instance, args = _); end

  protected

  def handle_argument_error?(instance, error, caller); end
  def handle_no_method_error?(instance, error, caller); end
  def local_method?(instance, name); end
  def not_debugging?(instance); end
  def private_method?(instance); end
  def public_method?(instance); end
  def required_arguments_for(klass, usage); end
  def required_options; end
  def sans_backtrace(backtrace, caller); end

  private

  def initialize_copy(other); end
end

Thor::Command::FILE_REGEXP = T.let(T.unsafe(nil), Regexp)

module Thor::CoreExt
end

class Thor::CoreExt::HashWithIndifferentAccess < ::Hash
  def initialize(hash = _); end

  def [](key); end
  def []=(key, value); end
  def delete(key); end
  def fetch(key, *args); end
  def key?(key); end
  def merge(other); end
  def merge!(other); end
  def replace(other_hash); end
  def reverse_merge(other); end
  def reverse_merge!(other_hash); end
  def to_hash; end
  def values_at(*indices); end

  protected

  def convert_key(key); end
  def method_missing(method, *args); end
end

Thor::Correctable = DidYouMean::Correctable

class Thor::DynamicCommand < ::Thor::Command
  def initialize(name, options = _); end

  def run(instance, args = _); end
end

Thor::DynamicTask = Thor::DynamicCommand

class Thor::Error < ::StandardError
end

class Thor::Group
  include(::Thor::Base)
  include(::Thor::Invocation)
  include(::Thor::Shell)
  extend(::Thor::Base::ClassMethods)
  extend(::Thor::Invocation::ClassMethods)


  protected

  def _invoke_for_class_method(klass, command = _, *args, &block); end

  def self.class_options_help(shell, groups = _); end
  def self.desc(description = _); end
  def self.get_options_from_invocations(group_options, base_options); end
  def self.handle_argument_error(command, error, _args, arity); end
  def self.help(shell); end
  def self.invocation_blocks; end
  def self.invocations; end
  def self.invoke(*names, &block); end
  def self.invoke_from_option(*names, &block); end
  def self.printable_commands(*_); end
  def self.printable_tasks(*_); end
  def self.remove_invocation(*names); end
end

Thor::HELP_MAPPINGS = T.let(T.unsafe(nil), Array)

class Thor::HiddenCommand < ::Thor::Command
  def hidden?; end
end

Thor::HiddenTask = Thor::HiddenCommand

module Thor::Invocation
  mixes_in_class_methods(::Thor::Invocation::ClassMethods)

  def initialize(args = _, options = _, config = _, &block); end

  def current_command_chain; end
  def invoke(name = _, *args); end
  def invoke_all; end
  def invoke_command(command, *args); end
  def invoke_task(command, *args); end
  def invoke_with_padding(*args); end

  protected

  def _parse_initialization_options(args, opts, config); end
  def _retrieve_class_and_command(name, sent_command = _); end
  def _retrieve_class_and_task(name, sent_command = _); end
  def _shared_configuration; end

  def self.included(base); end
end

module Thor::Invocation::ClassMethods
  def prepare_for_invocation(key, name); end
end

class Thor::InvocationError < ::Thor::Error
end

module Thor::LineEditor
  def self.best_available; end
  def self.readline(prompt, options = _); end
end

class Thor::LineEditor::Basic
  def initialize(prompt, options); end

  def options; end
  def prompt; end
  def readline; end

  private

  def echo?; end
  def get_input; end

  def self.available?; end
end

class Thor::LineEditor::Readline < ::Thor::LineEditor::Basic
  def readline; end

  private

  def add_to_history?; end
  def completion_options; end
  def completion_proc; end
  def use_path_completion?; end

  def self.available?; end
end

class Thor::LineEditor::Readline::PathCompletion
  def initialize(text); end

  def matches; end

  private

  def absolute_matches; end
  def base_path; end
  def glob_pattern; end
  def relative_matches; end
  def text; end
end

class Thor::MalformattedArgumentError < ::Thor::InvocationError
end

class Thor::NestedContext
  def initialize; end

  def enter; end
  def entered?; end

  private

  def pop; end
  def push; end
end

class Thor::NoKwargSpellChecker < ::DidYouMean::SpellChecker
  def initialize(dictionary); end
end

class Thor::Option < ::Thor::Argument
  def initialize(name, options = _); end

  def aliases; end
  def array?; end
  def boolean?; end
  def group; end
  def hash?; end
  def hide; end
  def human_name; end
  def lazy_default; end
  def numeric?; end
  def repeatable; end
  def string?; end
  def switch_name; end
  def usage(padding = _); end

  protected

  def dasherize(str); end
  def dasherized?; end
  def undasherize(str); end
  def validate!; end
  def validate_default_type!; end

  def self.parse(key, value); end
end

Thor::Option::VALID_TYPES = T.let(T.unsafe(nil), Array)

class Thor::Options < ::Thor::Arguments
  def initialize(hash_options = _, defaults = _, stop_on_unknown = _, disable_required_check = _); end

  def check_unknown!; end
  def parse(args); end
  def peek; end
  def remaining; end

  protected

  def assign_result!(option, result); end
  def current_is_switch?; end
  def current_is_switch_formatted?; end
  def current_is_value?; end
  def normalize_switch(arg); end
  def parse_boolean(switch); end
  def parse_peek(switch, option); end
  def parsing_options?; end
  def switch?(arg); end
  def switch_option(arg); end

  def self.to_switches(options); end
end

Thor::Options::EQ_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::LONG_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::OPTS_END = T.let(T.unsafe(nil), String)

Thor::Options::SHORT_NUM = T.let(T.unsafe(nil), Regexp)

Thor::Options::SHORT_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::SHORT_SQ_RE = T.let(T.unsafe(nil), Regexp)

module Thor::RakeCompat
  include(::FileUtils::StreamUtils_)
  include(::FileUtils)
  include(::Rake::FileUtilsExt)
  include(::Rake::DSL)

  def self.included(base); end
  def self.rake_classes; end
end

class Thor::RequiredArgumentMissingError < ::Thor::InvocationError
end

module Thor::Sandbox
end

module Thor::Shell
  def initialize(args = _, options = _, config = _); end

  def ask(*args, &block); end
  def error(*args, &block); end
  def file_collision(*args, &block); end
  def no?(*args, &block); end
  def print_in_columns(*args, &block); end
  def print_table(*args, &block); end
  def print_wrapped(*args, &block); end
  def say(*args, &block); end
  def say_status(*args, &block); end
  def set_color(*args, &block); end
  def shell; end
  def shell=(_); end
  def terminal_width(*args, &block); end
  def with_padding; end
  def yes?(*args, &block); end

  protected

  def _shared_configuration; end
end

class Thor::Shell::Basic
  def initialize; end

  def ask(statement, *args); end
  def base; end
  def base=(_); end
  def error(statement); end
  def file_collision(destination); end
  def indent(count = _); end
  def mute; end
  def mute?; end
  def no?(statement, color = _); end
  def padding; end
  def padding=(value); end
  def print_in_columns(array); end
  def print_table(array, options = _); end
  def print_wrapped(message, options = _); end
  def say(message = _, color = _, force_new_line = _); end
  def say_status(status, message, log_status = _); end
  def set_color(string, *_); end
  def terminal_width; end
  def yes?(statement, color = _); end

  protected

  def answer_match(possibilities, answer, case_insensitive); end
  def as_unicode; end
  def ask_filtered(statement, color, options); end
  def ask_simply(statement, color, options); end
  def can_display_colors?; end
  def dynamic_width; end
  def dynamic_width_stty; end
  def dynamic_width_tput; end
  def file_collision_help; end
  def git_merge_tool; end
  def is?(value); end
  def lookup_color(color); end
  def merge(destination, content); end
  def merge_tool; end
  def prepare_message(message, *color); end
  def quiet?; end
  def show_diff(destination, content); end
  def stderr; end
  def stdout; end
  def truncate(string, width); end
  def unix?; end
end

Thor::Shell::Basic::DEFAULT_TERMINAL_WIDTH = T.let(T.unsafe(nil), Integer)

class Thor::Shell::Color < ::Thor::Shell::Basic
  def set_color(string, *colors); end

  protected

  def are_colors_disabled?; end
  def can_display_colors?; end
  def diff_lcs_loaded?; end
  def output_diff_line(diff); end
  def show_diff(destination, content); end
end

Thor::Shell::Color::BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::Color::BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::BOLD = T.let(T.unsafe(nil), String)

Thor::Shell::Color::CLEAR = T.let(T.unsafe(nil), String)

Thor::Shell::Color::CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_RED = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::Color::RED = T.let(T.unsafe(nil), String)

Thor::Shell::Color::WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::YELLOW = T.let(T.unsafe(nil), String)

class Thor::Shell::HTML < ::Thor::Shell::Basic
  def ask(statement, color = _); end
  def set_color(string, *colors); end

  protected

  def can_display_colors?; end
  def diff_lcs_loaded?; end
  def output_diff_line(diff); end
  def show_diff(destination, content); end
end

Thor::Shell::HTML::BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::BOLD = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_RED = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::RED = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::SHELL_DELEGATED_METHODS = T.let(T.unsafe(nil), Array)

Thor::TEMPLATE_EXTNAME = T.let(T.unsafe(nil), String)

Thor::THOR_RESERVED_WORDS = T.let(T.unsafe(nil), Array)

Thor::Task = Thor::Command

class Thor::UndefinedCommandError < ::Thor::Error
  include(::DidYouMean::Correctable)

  def initialize(command, all_commands, namespace); end

  def all_commands; end
  def command; end
end

class Thor::UndefinedCommandError::SpellChecker
  def initialize(error); end

  def corrections; end
  def error; end
  def spell_checker; end
end

Thor::UndefinedTaskError = Thor::UndefinedCommandError

class Thor::UnknownArgumentError < ::Thor::Error
  include(::DidYouMean::Correctable)

  def initialize(switches, unknown); end

  def switches; end
  def unknown; end
end

class Thor::UnknownArgumentError::SpellChecker
  def initialize(error); end

  def corrections; end
  def error; end
  def spell_checker; end
end

module Thor::Util
  def self.camel_case(str); end
  def self.escape_globs(path); end
  def self.escape_html(string); end
  def self.find_by_namespace(namespace); end
  def self.find_class_and_command_by_namespace(namespace, fallback = _); end
  def self.find_class_and_task_by_namespace(namespace, fallback = _); end
  def self.globs_for(path); end
  def self.load_thorfile(path, content = _, debug = _); end
  def self.namespace_from_thor_class(constant); end
  def self.namespaces_in_content(contents, file = _); end
  def self.ruby_command; end
  def self.snake_case(str); end
  def self.thor_classes_in(klass); end
  def self.thor_root; end
  def self.thor_root_glob; end
  def self.user_home; end
end