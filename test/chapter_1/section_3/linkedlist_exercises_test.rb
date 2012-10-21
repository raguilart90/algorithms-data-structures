# encoding: utf-8

require "test/unit"
require_relative "../../../src/chapter_1/section_3/linkedlist_exercises"
require_relative "../../test_helper"
require_relative "../../../src/utils/linkedlist"

module Chapter1
  module Section3
    class LinkedListExercises_test < TestHelper

      def initialize(*args)
        super(*args)
        @target = LinkedListExercises.new
      end

      # Called after every test method runs. Can be used to tear
      # down fixture information.
      def teardown
        # Empty
      end

      def check_delete(input,lista)
		val = true
        while lista.next != nil
			val = lista.value != input
			lista = lista.next
        end
        
		return val
      end

    def create_list(lista, *args)
		args.each { |node|
    		lista.add(Utils::Node.new(node))
		}

	end

    # Write a method delete() that takes an int argument k and deletes 
    #the kth element in a linked list, if it exists.
    def test_delete_e31
		root = Utils::Node.new("1")
		list = Utils::List.new(root)
		create_list(list,"2","3","4","5","6")

		root2 = Utils::Node.new("1")
		list2 = Utils::List.new(root2)
		create_list(list2,"2","3","4","5","6")
		
		root3 = Utils::Node.new("1")
		list3 = Utils::List.new(root3)
		create_list(list3,"2","3","4","5","6")
		
		verify_method :delete_e31,
		                  :with =>
		                      [
		                          {params: [root, "5"], predicate: Proc.new {check_delete("5", root)}},
		                          {params: [root2, "4"], predicate: Proc.new { check_delete("4", root2)}},
		                          {params: [root3, "7"], predicate: Proc.new { check_delete("7", root3)}},
		                          #{params: [root, "-1"], predicate: Proc.new { |nodo| check_delete("-1", root)}},
		                       
		                      ]
	
      end
    #Write a method find() that takes a linked list and a string key as arguments 
    #and returns true if some node in the list has key as its item field, false otherwise.
    def test_find_e32

		root = Utils::Node.new("1")
		list = Utils::List.new(root)
		create_list(list,"2","3","4","5","6")
			
			#end
		verify_method :find_e32,
		                  :with =>
		                      [
		                          {params: [root, "5"],  expect: true },
		                          {params: [root, "4"],  expect: true },
		                          {params: [root, "1"],  expect: true },
		                          {params: [root, "2"], expect: true },
		                          {params: [root, "9"], expect: false },
		                          {params: [root, "-1"], expect: false },
		                          {params: [root, "100"], expect: false },
		                       
		                      ]     
      end

    end
  end
end