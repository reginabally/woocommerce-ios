import Foundation

/// DateFormatter Extensions
///
extension DateFormatter {

    /// Chart Formatters
    ///
    struct Charts {

        // MARK: - Chark axis formatters

        /// Date formatter used for creating the date for a selected date displayed on the time range bar for **hour** granularity.
        ///
        public static let chartSelectedDateHourFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d, h:mm a")
            return formatter
        }()

        /// Date formatter used for creating the date displayed on a chart axis for **hour** granularity.
        ///
        public static let chartAxisHourFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("ha")
            return formatter
        }()

        /// Date formatter used for creating the date displayed on a chart axis for **day** granularity.
        ///
        public static let chartAxisDayFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("MMM d")
            return formatter
        }()

        /// Date formatter used for creating the day of month displayed on a chart axis for **day** granularity.
        ///
        public static let chartAxisDayOfMonthFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("d")
            return formatter
        }()

        /// Date formatter used for creating the date displayed on a chart axis for **week** granularity.
        ///
        public static let chartAxisWeekFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("MMM d")
            return formatter
        }()

        /// Date formatter used for creating the date displayed on a chart axis for **month** granularity.
        ///
        public static let chartAxisMonthFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("MMM")
            return formatter
        }()

        /// Date formatter used for displaying the full month on a chart axis.
        ///
        public static let chartAxisFullMonthFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("MMMM yyyy")
            return formatter
        }()

        /// Date formatter used for creating the date displayed on a chart axis for **year** granularity.
        ///
        public static let chartAxisYearFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("yyyy")
            return formatter
        }()


        // MARK: - Chark marker formatters

        /// Date formatter used for creating a **localized** date string displayed on a chart marker for **day** granularity.
        ///
        /// Example Output: "Dec 30" or "12月30日"
        ///
        public static var chartMarkerDayFormatter: DateFormatter {
            monthAndDayFormatter
        }

        /// Date formatter used for creating a **localized** date string displayed on a chart marker for **week** granularity.
        ///
        /// Example Output: "1" or "23" (week number)
        ///
        public static let chartMarkerWeekFormatter: DateFormatter = {
            let formatter = DateFormatter()
            // Note: Passing "w Y" into `setLocalizedDateFormatFromTemplate()` will result in an empty string, however
            // simply passing in "w" works. So that is what we have to unfortunately do here.
            formatter.setLocalizedDateFormatFromTemplate("w")
            return formatter
        }()

        /// Date formatter used for creating a **localized** date string displayed on a chart marker for **month** granularity.
        ///
        /// Example Output: "Jan 2018" or "2018年1月"
        ///
        public static let chartMarkerMonthFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.setLocalizedDateFormatFromTemplate("MMM yyyy")
            return formatter
        }()

        /// Date formatter used for creating a **localized** date string displayed on a chart marker for **year** granularity.
        ///
        /// Example Output: "2018" or "2017"
        ///
        public static var chartMarkerYearFormatter: DateFormatter {
            yearFormatter
        }
    }

    /// Date formatter used for creating a medium-length **localized** date string to be displayed anywhere.
    ///
    /// Example output in English: "Jan 28, 2018"
    ///
    public static let mediumLengthLocalizedDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("MMM d yyyy")

        return formatter
    }()

    /// Date formatter used for creating a **localized** string containing the month and day.
    ///
    /// Example Output: "Dec 30" or "12月30日"
    ///
    static let monthAndDayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("MMM d")
        return formatter
    }()

    /// Date formatter used for creating a **localized** string of the year only.
    ///
    /// Example Output: "2018" or "2017"
    ///
    static let yearFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yyyy")
        return formatter
    }()

    /// Localized date formatter that generates the time only. Example, “11:23 AM”.
    ///
    static let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("hh:mm a")
        return formatter
    }()

    /// Date formatter used for creating a **localized** date and time string.
    ///
    /// Example output in English: "Jan 28, 2018, 11:23 AM"
    ///
    public static let dateAndTimeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("MMM d yyyy hh:mm a")

        return formatter
    }()
}
