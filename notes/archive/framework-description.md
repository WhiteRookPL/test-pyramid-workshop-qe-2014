Test framework will consist of the following parts:

- feature
   - pages
      - sample_page.rb (with hash for all page elements)
      - base_page.rb (with has for commont page elements and methods such as fill, press, attach_file, etc.)
   - step_definitions
      - common.rb (common step definitions)
      - sample_page_steps.rb (specific step definitions for given page)
   - support
      - env.rb (environment configuration such as web driver definition)

Test framework will support page object design pattern

How to run cucumber tests? => ant target
Which browser will be supported => I think that only Firefox (what do you think about that?)