require 'minitest/autorun'

	require_relative 'number_summary'

	class NumberSummaryTest < MiniTest::Test

	end

	module NumberSummaryTests

		class Max < NumberSummaryTest
			def test_finds_the_nax
				assert_equal 5, NumberSummary.max([1, 2, 3, 4, 5])
				assert_equal 4, NumberSummary.max([1, 4, 3, 2])
				assert_equal 3, NumberSummary.max([3, 2, 1])
				assert_equal 4, NumberSummary.max([4, 1, 4, 4])
				assert_equal 1, NumberSummary.max([1])
				assert_equal 4.99, NumberSummary.max([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Min < NumberSummaryTest
			def test_finds_the_min
				assert_equal 1, NumberSummary.min([1, 2, 3, 4, 5])
				assert_equal 1, NumberSummary.min([1, 4, 3, 2])
				assert_equal 1, NumberSummary.min([3, 2, 1])
				assert_equal 1, NumberSummary.min([4, 1, 4, 4])
				assert_equal 1, NumberSummary.min([1])
				assert_equal -9.45, NumberSummary.min([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Mean < NumberSummaryTest
			def test_finds_the_mean
				assert_equal 3, NumberSummary.mean([1, 2, 3, 4, 5])
				assert_equal 3.2, NumberSummary.mean([4, 3, 6, 2, 1])
				assert_equal 5.5, NumberSummary.mean([7, 2, 4, 9])
				assert_equal 4.7, NumberSummary.mean([2, 5, 7])
				assert_equal -2.4, NumberSummary.mean([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Mode < NumberSummaryTest
			def test_finds_the_modes
				assert_equal [1, 2, 3, 4, 5], NumberSummary.mode([1, 2, 3, 4, 5])
				assert_equal [3, 6], NumberSummary.mode([3, 3, 6, 6, 9, 1, 2])
				assert_equal [2, 4, 5, 8], NumberSummary.mode([2, 5, 8, 2, 8, 1, 4, 5, 4])
				assert_equal [-4.73, 1.59], NumberSummary.mode([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Median < NumberSummaryTest
			def test_finds_the_median
				assert_equal 3, NumberSummary.median([1, 2, 3, 4, 5])
				assert_equal 6, NumberSummary.median([7, 2, 9, 1, 6])
				assert_equal 5, NumberSummary.median([3, 7, 1, 9])
				assert_equal 4.5, NumberSummary.median([1, 4, 5, 9])
				assert_equal -3.9, NumberSummary.median([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Q1 < NumberSummaryTest
			def test_finds_the_q1
				assert_equal 1.5, NumberSummary.q1([1, 2, 3, 4, 5])
				assert_equal 2.5, NumberSummary.q1([6, 1, 4, 9])
				assert_equal 3, NumberSummary.q1([9, 3, 5, 9, 1, 6])
				assert_equal -5.5, NumberSummary.q1([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Q3 < NumberSummaryTest
			def test_finds_the_q3
				assert_equal 4.5, NumberSummary.q3([1, 2, 3, 4, 5])
				assert_equal 7.5, NumberSummary.q3([6, 1, 4, 9])
				assert_equal 9, NumberSummary.q3([9, 3, 5, 9, 1, 6])
				assert_equal 1.6, NumberSummary.q3([0.56,-4.73,1.59,4.99,4.01,-9.45,-4.05,-3.7,-8.63,-6.21,-4.73,1.59])
			end
		end

		class Sigma < NumberSummaryTest
			def test_finds_the_sigma
				assert_equal 1.6, NumberSummary.sigma([1, 2, 3, 4, 5])
				assert_equal 2.9, NumberSummary.sigma([7, 1, 8, 3, 5])
				assert_equal 2.5, NumberSummary.sigma([8, 2, 5, 9, 8, 3, 5, 6])
				assert_equal 4.8, NumberSummary.sigma([0.56, -4.73, 1.59, 4.99, 4.01, -9.45, -4.05, -3.7, -8.63, -6.21, -4.73, 1.59])
			end
		end
	end