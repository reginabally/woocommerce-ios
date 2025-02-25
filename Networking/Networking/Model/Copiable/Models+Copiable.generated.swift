// Generated using Sourcery 1.0.3 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import Codegen
import Foundation


extension Networking.AddOnGroup {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        groupID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        priority: CopiableProp<Int64> = .copy,
        addOns: CopiableProp<[ProductAddOn]> = .copy
    ) -> Networking.AddOnGroup {
        let siteID = siteID ?? self.siteID
        let groupID = groupID ?? self.groupID
        let name = name ?? self.name
        let priority = priority ?? self.priority
        let addOns = addOns ?? self.addOns

        return Networking.AddOnGroup(
            siteID: siteID,
            groupID: groupID,
            name: name,
            priority: priority,
            addOns: addOns
        )
    }
}

extension Networking.Address {
    public func copy(
        firstName: CopiableProp<String> = .copy,
        lastName: CopiableProp<String> = .copy,
        company: NullableCopiableProp<String> = .copy,
        address1: CopiableProp<String> = .copy,
        address2: NullableCopiableProp<String> = .copy,
        city: CopiableProp<String> = .copy,
        state: CopiableProp<String> = .copy,
        postcode: CopiableProp<String> = .copy,
        country: CopiableProp<String> = .copy,
        phone: NullableCopiableProp<String> = .copy,
        email: NullableCopiableProp<String> = .copy
    ) -> Networking.Address {
        let firstName = firstName ?? self.firstName
        let lastName = lastName ?? self.lastName
        let company = company ?? self.company
        let address1 = address1 ?? self.address1
        let address2 = address2 ?? self.address2
        let city = city ?? self.city
        let state = state ?? self.state
        let postcode = postcode ?? self.postcode
        let country = country ?? self.country
        let phone = phone ?? self.phone
        let email = email ?? self.email

        return Networking.Address(
            firstName: firstName,
            lastName: lastName,
            company: company,
            address1: address1,
            address2: address2,
            city: city,
            state: state,
            postcode: postcode,
            country: country,
            phone: phone,
            email: email
        )
    }
}

extension Networking.Announcement {
    public func copy(
        appVersionName: CopiableProp<String> = .copy,
        minimumAppVersion: CopiableProp<String> = .copy,
        maximumAppVersion: CopiableProp<String> = .copy,
        appVersionTargets: CopiableProp<[String]> = .copy,
        detailsUrl: CopiableProp<String> = .copy,
        announcementVersion: CopiableProp<String> = .copy,
        isLocalized: CopiableProp<Bool> = .copy,
        responseLocale: CopiableProp<String> = .copy,
        features: CopiableProp<[Feature]> = .copy
    ) -> Networking.Announcement {
        let appVersionName = appVersionName ?? self.appVersionName
        let minimumAppVersion = minimumAppVersion ?? self.minimumAppVersion
        let maximumAppVersion = maximumAppVersion ?? self.maximumAppVersion
        let appVersionTargets = appVersionTargets ?? self.appVersionTargets
        let detailsUrl = detailsUrl ?? self.detailsUrl
        let announcementVersion = announcementVersion ?? self.announcementVersion
        let isLocalized = isLocalized ?? self.isLocalized
        let responseLocale = responseLocale ?? self.responseLocale
        let features = features ?? self.features

        return Networking.Announcement(
            appVersionName: appVersionName,
            minimumAppVersion: minimumAppVersion,
            maximumAppVersion: maximumAppVersion,
            appVersionTargets: appVersionTargets,
            detailsUrl: detailsUrl,
            announcementVersion: announcementVersion,
            isLocalized: isLocalized,
            responseLocale: responseLocale,
            features: features
        )
    }
}

extension Networking.Coupon {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        couponID: CopiableProp<Int64> = .copy,
        code: CopiableProp<String> = .copy,
        amount: CopiableProp<String> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        dateModified: CopiableProp<Date> = .copy,
        discountType: CopiableProp<Coupon.DiscountType> = .copy,
        description: CopiableProp<String> = .copy,
        dateExpires: NullableCopiableProp<Date> = .copy,
        usageCount: CopiableProp<Int64> = .copy,
        individualUse: CopiableProp<Bool> = .copy,
        productIds: CopiableProp<[Int64]> = .copy,
        excludedProductIds: CopiableProp<[Int64]> = .copy,
        usageLimit: NullableCopiableProp<Int64> = .copy,
        usageLimitPerUser: NullableCopiableProp<Int64> = .copy,
        limitUsageToXItems: NullableCopiableProp<Int64> = .copy,
        freeShipping: CopiableProp<Bool> = .copy,
        productCategories: CopiableProp<[Int64]> = .copy,
        excludedProductCategories: CopiableProp<[Int64]> = .copy,
        excludeSaleItems: CopiableProp<Bool> = .copy,
        minimumAmount: CopiableProp<String> = .copy,
        maximumAmount: CopiableProp<String> = .copy,
        emailRestrictions: CopiableProp<[String]> = .copy,
        usedBy: CopiableProp<[String]> = .copy
    ) -> Networking.Coupon {
        let siteID = siteID ?? self.siteID
        let couponID = couponID ?? self.couponID
        let code = code ?? self.code
        let amount = amount ?? self.amount
        let dateCreated = dateCreated ?? self.dateCreated
        let dateModified = dateModified ?? self.dateModified
        let discountType = discountType ?? self.discountType
        let description = description ?? self.description
        let dateExpires = dateExpires ?? self.dateExpires
        let usageCount = usageCount ?? self.usageCount
        let individualUse = individualUse ?? self.individualUse
        let productIds = productIds ?? self.productIds
        let excludedProductIds = excludedProductIds ?? self.excludedProductIds
        let usageLimit = usageLimit ?? self.usageLimit
        let usageLimitPerUser = usageLimitPerUser ?? self.usageLimitPerUser
        let limitUsageToXItems = limitUsageToXItems ?? self.limitUsageToXItems
        let freeShipping = freeShipping ?? self.freeShipping
        let productCategories = productCategories ?? self.productCategories
        let excludedProductCategories = excludedProductCategories ?? self.excludedProductCategories
        let excludeSaleItems = excludeSaleItems ?? self.excludeSaleItems
        let minimumAmount = minimumAmount ?? self.minimumAmount
        let maximumAmount = maximumAmount ?? self.maximumAmount
        let emailRestrictions = emailRestrictions ?? self.emailRestrictions
        let usedBy = usedBy ?? self.usedBy

        return Networking.Coupon(
            siteID: siteID,
            couponID: couponID,
            code: code,
            amount: amount,
            dateCreated: dateCreated,
            dateModified: dateModified,
            discountType: discountType,
            description: description,
            dateExpires: dateExpires,
            usageCount: usageCount,
            individualUse: individualUse,
            productIds: productIds,
            excludedProductIds: excludedProductIds,
            usageLimit: usageLimit,
            usageLimitPerUser: usageLimitPerUser,
            limitUsageToXItems: limitUsageToXItems,
            freeShipping: freeShipping,
            productCategories: productCategories,
            excludedProductCategories: excludedProductCategories,
            excludeSaleItems: excludeSaleItems,
            minimumAmount: minimumAmount,
            maximumAmount: maximumAmount,
            emailRestrictions: emailRestrictions,
            usedBy: usedBy
        )
    }
}

extension Networking.CouponReport {
    public func copy(
        couponID: CopiableProp<Int64> = .copy,
        amount: CopiableProp<Double> = .copy,
        ordersCount: CopiableProp<Int64> = .copy
    ) -> Networking.CouponReport {
        let couponID = couponID ?? self.couponID
        let amount = amount ?? self.amount
        let ordersCount = ordersCount ?? self.ordersCount

        return Networking.CouponReport(
            couponID: couponID,
            amount: amount,
            ordersCount: ordersCount
        )
    }
}

extension Networking.Customer {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        customerID: CopiableProp<Int64> = .copy,
        email: CopiableProp<String> = .copy,
        firstName: NullableCopiableProp<String> = .copy,
        lastName: NullableCopiableProp<String> = .copy,
        billing: NullableCopiableProp<Address> = .copy,
        shipping: NullableCopiableProp<Address> = .copy
    ) -> Networking.Customer {
        let siteID = siteID ?? self.siteID
        let customerID = customerID ?? self.customerID
        let email = email ?? self.email
        let firstName = firstName ?? self.firstName
        let lastName = lastName ?? self.lastName
        let billing = billing ?? self.billing
        let shipping = shipping ?? self.shipping

        return Networking.Customer(
            siteID: siteID,
            customerID: customerID,
            email: email,
            firstName: firstName,
            lastName: lastName,
            billing: billing,
            shipping: shipping
        )
    }
}

extension Networking.DotcomUser {
    public func copy(
        id: CopiableProp<Int64> = .copy,
        username: CopiableProp<String> = .copy,
        email: CopiableProp<String> = .copy,
        displayName: CopiableProp<String> = .copy,
        avatar: NullableCopiableProp<String> = .copy
    ) -> Networking.DotcomUser {
        let id = id ?? self.id
        let username = username ?? self.username
        let email = email ?? self.email
        let displayName = displayName ?? self.displayName
        let avatar = avatar ?? self.avatar

        return Networking.DotcomUser(
            id: id,
            username: username,
            email: email,
            displayName: displayName,
            avatar: avatar
        )
    }
}

extension Networking.Feature {
    public func copy(
        title: CopiableProp<String> = .copy,
        subtitle: CopiableProp<String> = .copy,
        icons: NullableCopiableProp<[FeatureIcon]> = .copy,
        iconUrl: CopiableProp<String> = .copy,
        iconBase64: NullableCopiableProp<String> = .copy
    ) -> Networking.Feature {
        let title = title ?? self.title
        let subtitle = subtitle ?? self.subtitle
        let icons = icons ?? self.icons
        let iconUrl = iconUrl ?? self.iconUrl
        let iconBase64 = iconBase64 ?? self.iconBase64

        return Networking.Feature(
            title: title,
            subtitle: subtitle,
            icons: icons,
            iconUrl: iconUrl,
            iconBase64: iconBase64
        )
    }
}

extension Networking.FeatureIcon {
    public func copy(
        iconUrl: CopiableProp<String> = .copy,
        iconBase64: CopiableProp<String> = .copy,
        iconType: CopiableProp<String> = .copy
    ) -> Networking.FeatureIcon {
        let iconUrl = iconUrl ?? self.iconUrl
        let iconBase64 = iconBase64 ?? self.iconBase64
        let iconType = iconType ?? self.iconType

        return Networking.FeatureIcon(
            iconUrl: iconUrl,
            iconBase64: iconBase64,
            iconType: iconType
        )
    }
}

extension Networking.InboxAction {
    public func copy(
        id: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        label: CopiableProp<String> = .copy,
        status: CopiableProp<String> = .copy,
        url: CopiableProp<String> = .copy
    ) -> Networking.InboxAction {
        let id = id ?? self.id
        let name = name ?? self.name
        let label = label ?? self.label
        let status = status ?? self.status
        let url = url ?? self.url

        return Networking.InboxAction(
            id: id,
            name: name,
            label: label,
            status: status,
            url: url
        )
    }
}

extension Networking.InboxNote {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        id: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        type: CopiableProp<String> = .copy,
        status: CopiableProp<String> = .copy,
        actions: CopiableProp<[InboxAction]> = .copy,
        title: CopiableProp<String> = .copy,
        content: CopiableProp<String> = .copy,
        isRemoved: CopiableProp<Bool> = .copy,
        isRead: CopiableProp<Bool> = .copy,
        dateCreated: CopiableProp<Date> = .copy
    ) -> Networking.InboxNote {
        let siteID = siteID ?? self.siteID
        let id = id ?? self.id
        let name = name ?? self.name
        let type = type ?? self.type
        let status = status ?? self.status
        let actions = actions ?? self.actions
        let title = title ?? self.title
        let content = content ?? self.content
        let isRemoved = isRemoved ?? self.isRemoved
        let isRead = isRead ?? self.isRead
        let dateCreated = dateCreated ?? self.dateCreated

        return Networking.InboxNote(
            siteID: siteID,
            id: id,
            name: name,
            type: type,
            status: status,
            actions: actions,
            title: title,
            content: content,
            isRemoved: isRemoved,
            isRead: isRead,
            dateCreated: dateCreated
        )
    }
}

extension Networking.JetpackUser {
    public func copy(
        isConnected: CopiableProp<Bool> = .copy,
        isPrimary: CopiableProp<Bool> = .copy,
        username: CopiableProp<String> = .copy,
        wpcomUser: NullableCopiableProp<DotcomUser> = .copy,
        gravatar: NullableCopiableProp<String> = .copy
    ) -> Networking.JetpackUser {
        let isConnected = isConnected ?? self.isConnected
        let isPrimary = isPrimary ?? self.isPrimary
        let username = username ?? self.username
        let wpcomUser = wpcomUser ?? self.wpcomUser
        let gravatar = gravatar ?? self.gravatar

        return Networking.JetpackUser(
            isConnected: isConnected,
            isPrimary: isPrimary,
            username: username,
            wpcomUser: wpcomUser,
            gravatar: gravatar
        )
    }
}

extension Networking.JustInTimeMessage {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        messageID: CopiableProp<String> = .copy,
        featureClass: CopiableProp<String> = .copy,
        ttl: CopiableProp<Int64> = .copy,
        content: CopiableProp<JustInTimeMessage.Content> = .copy,
        cta: CopiableProp<JustInTimeMessage.CTA> = .copy
    ) -> Networking.JustInTimeMessage {
        let siteID = siteID ?? self.siteID
        let messageID = messageID ?? self.messageID
        let featureClass = featureClass ?? self.featureClass
        let ttl = ttl ?? self.ttl
        let content = content ?? self.content
        let cta = cta ?? self.cta

        return Networking.JustInTimeMessage(
            siteID: siteID,
            messageID: messageID,
            featureClass: featureClass,
            ttl: ttl,
            content: content,
            cta: cta
        )
    }
}

extension Networking.JustInTimeMessage.CTA {
    public func copy(
        message: CopiableProp<String> = .copy,
        link: CopiableProp<String> = .copy
    ) -> Networking.JustInTimeMessage.CTA {
        let message = message ?? self.message
        let link = link ?? self.link

        return Networking.JustInTimeMessage.CTA(
            message: message,
            link: link
        )
    }
}

extension Networking.JustInTimeMessage.Content {
    public func copy(
        message: CopiableProp<String> = .copy,
        description: CopiableProp<String> = .copy
    ) -> Networking.JustInTimeMessage.Content {
        let message = message ?? self.message
        let description = description ?? self.description

        return Networking.JustInTimeMessage.Content(
            message: message,
            description: description
        )
    }
}

extension Networking.Media {
    public func copy(
        mediaID: CopiableProp<Int64> = .copy,
        date: CopiableProp<Date> = .copy,
        fileExtension: CopiableProp<String> = .copy,
        filename: CopiableProp<String> = .copy,
        mimeType: CopiableProp<String> = .copy,
        src: CopiableProp<String> = .copy,
        thumbnailURL: NullableCopiableProp<String> = .copy,
        name: NullableCopiableProp<String> = .copy,
        alt: NullableCopiableProp<String> = .copy,
        height: NullableCopiableProp<Double> = .copy,
        width: NullableCopiableProp<Double> = .copy
    ) -> Networking.Media {
        let mediaID = mediaID ?? self.mediaID
        let date = date ?? self.date
        let fileExtension = fileExtension ?? self.fileExtension
        let filename = filename ?? self.filename
        let mimeType = mimeType ?? self.mimeType
        let src = src ?? self.src
        let thumbnailURL = thumbnailURL ?? self.thumbnailURL
        let name = name ?? self.name
        let alt = alt ?? self.alt
        let height = height ?? self.height
        let width = width ?? self.width

        return Networking.Media(
            mediaID: mediaID,
            date: date,
            fileExtension: fileExtension,
            filename: filename,
            mimeType: mimeType,
            src: src,
            thumbnailURL: thumbnailURL,
            name: name,
            alt: alt,
            height: height,
            width: width
        )
    }
}

extension Networking.Order {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        orderID: CopiableProp<Int64> = .copy,
        parentID: CopiableProp<Int64> = .copy,
        customerID: CopiableProp<Int64> = .copy,
        orderKey: CopiableProp<String> = .copy,
        isEditable: CopiableProp<Bool> = .copy,
        needsPayment: CopiableProp<Bool> = .copy,
        needsProcessing: CopiableProp<Bool> = .copy,
        number: CopiableProp<String> = .copy,
        status: CopiableProp<OrderStatusEnum> = .copy,
        currency: CopiableProp<String> = .copy,
        customerNote: NullableCopiableProp<String> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        dateModified: CopiableProp<Date> = .copy,
        datePaid: NullableCopiableProp<Date> = .copy,
        discountTotal: CopiableProp<String> = .copy,
        discountTax: CopiableProp<String> = .copy,
        shippingTotal: CopiableProp<String> = .copy,
        shippingTax: CopiableProp<String> = .copy,
        total: CopiableProp<String> = .copy,
        totalTax: CopiableProp<String> = .copy,
        paymentMethodID: CopiableProp<String> = .copy,
        paymentMethodTitle: CopiableProp<String> = .copy,
        paymentURL: NullableCopiableProp<URL> = .copy,
        chargeID: NullableCopiableProp<String> = .copy,
        items: CopiableProp<[OrderItem]> = .copy,
        billingAddress: NullableCopiableProp<Address> = .copy,
        shippingAddress: NullableCopiableProp<Address> = .copy,
        shippingLines: CopiableProp<[ShippingLine]> = .copy,
        coupons: CopiableProp<[OrderCouponLine]> = .copy,
        refunds: CopiableProp<[OrderRefundCondensed]> = .copy,
        fees: CopiableProp<[OrderFeeLine]> = .copy,
        taxes: CopiableProp<[OrderTaxLine]> = .copy,
        customFields: CopiableProp<[OrderMetaData]> = .copy
    ) -> Networking.Order {
        let siteID = siteID ?? self.siteID
        let orderID = orderID ?? self.orderID
        let parentID = parentID ?? self.parentID
        let customerID = customerID ?? self.customerID
        let orderKey = orderKey ?? self.orderKey
        let isEditable = isEditable ?? self.isEditable
        let needsPayment = needsPayment ?? self.needsPayment
        let needsProcessing = needsProcessing ?? self.needsProcessing
        let number = number ?? self.number
        let status = status ?? self.status
        let currency = currency ?? self.currency
        let customerNote = customerNote ?? self.customerNote
        let dateCreated = dateCreated ?? self.dateCreated
        let dateModified = dateModified ?? self.dateModified
        let datePaid = datePaid ?? self.datePaid
        let discountTotal = discountTotal ?? self.discountTotal
        let discountTax = discountTax ?? self.discountTax
        let shippingTotal = shippingTotal ?? self.shippingTotal
        let shippingTax = shippingTax ?? self.shippingTax
        let total = total ?? self.total
        let totalTax = totalTax ?? self.totalTax
        let paymentMethodID = paymentMethodID ?? self.paymentMethodID
        let paymentMethodTitle = paymentMethodTitle ?? self.paymentMethodTitle
        let paymentURL = paymentURL ?? self.paymentURL
        let chargeID = chargeID ?? self.chargeID
        let items = items ?? self.items
        let billingAddress = billingAddress ?? self.billingAddress
        let shippingAddress = shippingAddress ?? self.shippingAddress
        let shippingLines = shippingLines ?? self.shippingLines
        let coupons = coupons ?? self.coupons
        let refunds = refunds ?? self.refunds
        let fees = fees ?? self.fees
        let taxes = taxes ?? self.taxes
        let customFields = customFields ?? self.customFields

        return Networking.Order(
            siteID: siteID,
            orderID: orderID,
            parentID: parentID,
            customerID: customerID,
            orderKey: orderKey,
            isEditable: isEditable,
            needsPayment: needsPayment,
            needsProcessing: needsProcessing,
            number: number,
            status: status,
            currency: currency,
            customerNote: customerNote,
            dateCreated: dateCreated,
            dateModified: dateModified,
            datePaid: datePaid,
            discountTotal: discountTotal,
            discountTax: discountTax,
            shippingTotal: shippingTotal,
            shippingTax: shippingTax,
            total: total,
            totalTax: totalTax,
            paymentMethodID: paymentMethodID,
            paymentMethodTitle: paymentMethodTitle,
            paymentURL: paymentURL,
            chargeID: chargeID,
            items: items,
            billingAddress: billingAddress,
            shippingAddress: shippingAddress,
            shippingLines: shippingLines,
            coupons: coupons,
            refunds: refunds,
            fees: fees,
            taxes: taxes,
            customFields: customFields
        )
    }
}

extension Networking.OrderFeeLine {
    public func copy(
        feeID: CopiableProp<Int64> = .copy,
        name: NullableCopiableProp<String> = .copy,
        taxClass: CopiableProp<String> = .copy,
        taxStatus: CopiableProp<OrderFeeTaxStatus> = .copy,
        total: CopiableProp<String> = .copy,
        totalTax: CopiableProp<String> = .copy,
        taxes: CopiableProp<[OrderItemTax]> = .copy,
        attributes: CopiableProp<[OrderItemAttribute]> = .copy
    ) -> Networking.OrderFeeLine {
        let feeID = feeID ?? self.feeID
        let name = name ?? self.name
        let taxClass = taxClass ?? self.taxClass
        let taxStatus = taxStatus ?? self.taxStatus
        let total = total ?? self.total
        let totalTax = totalTax ?? self.totalTax
        let taxes = taxes ?? self.taxes
        let attributes = attributes ?? self.attributes

        return Networking.OrderFeeLine(
            feeID: feeID,
            name: name,
            taxClass: taxClass,
            taxStatus: taxStatus,
            total: total,
            totalTax: totalTax,
            taxes: taxes,
            attributes: attributes
        )
    }
}

extension Networking.OrderItem {
    public func copy(
        itemID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        productID: CopiableProp<Int64> = .copy,
        variationID: CopiableProp<Int64> = .copy,
        quantity: CopiableProp<Decimal> = .copy,
        price: CopiableProp<NSDecimalNumber> = .copy,
        sku: NullableCopiableProp<String> = .copy,
        subtotal: CopiableProp<String> = .copy,
        subtotalTax: CopiableProp<String> = .copy,
        taxClass: CopiableProp<String> = .copy,
        taxes: CopiableProp<[OrderItemTax]> = .copy,
        total: CopiableProp<String> = .copy,
        totalTax: CopiableProp<String> = .copy,
        attributes: CopiableProp<[OrderItemAttribute]> = .copy
    ) -> Networking.OrderItem {
        let itemID = itemID ?? self.itemID
        let name = name ?? self.name
        let productID = productID ?? self.productID
        let variationID = variationID ?? self.variationID
        let quantity = quantity ?? self.quantity
        let price = price ?? self.price
        let sku = sku ?? self.sku
        let subtotal = subtotal ?? self.subtotal
        let subtotalTax = subtotalTax ?? self.subtotalTax
        let taxClass = taxClass ?? self.taxClass
        let taxes = taxes ?? self.taxes
        let total = total ?? self.total
        let totalTax = totalTax ?? self.totalTax
        let attributes = attributes ?? self.attributes

        return Networking.OrderItem(
            itemID: itemID,
            name: name,
            productID: productID,
            variationID: variationID,
            quantity: quantity,
            price: price,
            sku: sku,
            subtotal: subtotal,
            subtotalTax: subtotalTax,
            taxClass: taxClass,
            taxes: taxes,
            total: total,
            totalTax: totalTax,
            attributes: attributes
        )
    }
}

extension Networking.OrderItemAttribute {
    public func copy(
        metaID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        value: CopiableProp<String> = .copy
    ) -> Networking.OrderItemAttribute {
        let metaID = metaID ?? self.metaID
        let name = name ?? self.name
        let value = value ?? self.value

        return Networking.OrderItemAttribute(
            metaID: metaID,
            name: name,
            value: value
        )
    }
}

extension Networking.OrderItemRefund {
    public func copy(
        itemID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        productID: CopiableProp<Int64> = .copy,
        variationID: CopiableProp<Int64> = .copy,
        refundedItemID: NullableCopiableProp<String> = .copy,
        quantity: CopiableProp<Decimal> = .copy,
        price: CopiableProp<NSDecimalNumber> = .copy,
        sku: NullableCopiableProp<String> = .copy,
        subtotal: CopiableProp<String> = .copy,
        subtotalTax: CopiableProp<String> = .copy,
        taxClass: CopiableProp<String> = .copy,
        taxes: CopiableProp<[OrderItemTaxRefund]> = .copy,
        total: CopiableProp<String> = .copy,
        totalTax: CopiableProp<String> = .copy
    ) -> Networking.OrderItemRefund {
        let itemID = itemID ?? self.itemID
        let name = name ?? self.name
        let productID = productID ?? self.productID
        let variationID = variationID ?? self.variationID
        let refundedItemID = refundedItemID ?? self.refundedItemID
        let quantity = quantity ?? self.quantity
        let price = price ?? self.price
        let sku = sku ?? self.sku
        let subtotal = subtotal ?? self.subtotal
        let subtotalTax = subtotalTax ?? self.subtotalTax
        let taxClass = taxClass ?? self.taxClass
        let taxes = taxes ?? self.taxes
        let total = total ?? self.total
        let totalTax = totalTax ?? self.totalTax

        return Networking.OrderItemRefund(
            itemID: itemID,
            name: name,
            productID: productID,
            variationID: variationID,
            refundedItemID: refundedItemID,
            quantity: quantity,
            price: price,
            sku: sku,
            subtotal: subtotal,
            subtotalTax: subtotalTax,
            taxClass: taxClass,
            taxes: taxes,
            total: total,
            totalTax: totalTax
        )
    }
}

extension Networking.OrderStatsV4 {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        granularity: CopiableProp<StatsGranularityV4> = .copy,
        totals: CopiableProp<OrderStatsV4Totals> = .copy,
        intervals: CopiableProp<[OrderStatsV4Interval]> = .copy
    ) -> Networking.OrderStatsV4 {
        let siteID = siteID ?? self.siteID
        let granularity = granularity ?? self.granularity
        let totals = totals ?? self.totals
        let intervals = intervals ?? self.intervals

        return Networking.OrderStatsV4(
            siteID: siteID,
            granularity: granularity,
            totals: totals,
            intervals: intervals
        )
    }
}

extension Networking.OrderStatsV4Interval {
    public func copy(
        interval: CopiableProp<String> = .copy,
        dateStart: CopiableProp<String> = .copy,
        dateEnd: CopiableProp<String> = .copy,
        subtotals: CopiableProp<OrderStatsV4Totals> = .copy
    ) -> Networking.OrderStatsV4Interval {
        let interval = interval ?? self.interval
        let dateStart = dateStart ?? self.dateStart
        let dateEnd = dateEnd ?? self.dateEnd
        let subtotals = subtotals ?? self.subtotals

        return Networking.OrderStatsV4Interval(
            interval: interval,
            dateStart: dateStart,
            dateEnd: dateEnd,
            subtotals: subtotals
        )
    }
}

extension Networking.OrderStatsV4Totals {
    public func copy(
        totalOrders: CopiableProp<Int> = .copy,
        totalItemsSold: CopiableProp<Int> = .copy,
        grossRevenue: CopiableProp<Decimal> = .copy,
        couponDiscount: CopiableProp<Decimal> = .copy,
        totalCoupons: CopiableProp<Int> = .copy,
        refunds: CopiableProp<Decimal> = .copy,
        taxes: CopiableProp<Decimal> = .copy,
        shipping: CopiableProp<Decimal> = .copy,
        netRevenue: CopiableProp<Decimal> = .copy,
        totalProducts: NullableCopiableProp<Int> = .copy,
        averageOrderValue: CopiableProp<Decimal> = .copy
    ) -> Networking.OrderStatsV4Totals {
        let totalOrders = totalOrders ?? self.totalOrders
        let totalItemsSold = totalItemsSold ?? self.totalItemsSold
        let grossRevenue = grossRevenue ?? self.grossRevenue
        let couponDiscount = couponDiscount ?? self.couponDiscount
        let totalCoupons = totalCoupons ?? self.totalCoupons
        let refunds = refunds ?? self.refunds
        let taxes = taxes ?? self.taxes
        let shipping = shipping ?? self.shipping
        let netRevenue = netRevenue ?? self.netRevenue
        let totalProducts = totalProducts ?? self.totalProducts
        let averageOrderValue = averageOrderValue ?? self.averageOrderValue

        return Networking.OrderStatsV4Totals(
            totalOrders: totalOrders,
            totalItemsSold: totalItemsSold,
            grossRevenue: grossRevenue,
            couponDiscount: couponDiscount,
            totalCoupons: totalCoupons,
            refunds: refunds,
            taxes: taxes,
            shipping: shipping,
            netRevenue: netRevenue,
            totalProducts: totalProducts,
            averageOrderValue: averageOrderValue
        )
    }
}

extension Networking.OrderTaxLine {
    public func copy(
        taxID: CopiableProp<Int64> = .copy,
        rateCode: CopiableProp<String> = .copy,
        rateID: CopiableProp<Int64> = .copy,
        label: CopiableProp<String> = .copy,
        isCompoundTaxRate: CopiableProp<Bool> = .copy,
        totalTax: CopiableProp<String> = .copy,
        totalShippingTax: CopiableProp<String> = .copy,
        ratePercent: CopiableProp<Double> = .copy,
        attributes: CopiableProp<[OrderItemAttribute]> = .copy
    ) -> Networking.OrderTaxLine {
        let taxID = taxID ?? self.taxID
        let rateCode = rateCode ?? self.rateCode
        let rateID = rateID ?? self.rateID
        let label = label ?? self.label
        let isCompoundTaxRate = isCompoundTaxRate ?? self.isCompoundTaxRate
        let totalTax = totalTax ?? self.totalTax
        let totalShippingTax = totalShippingTax ?? self.totalShippingTax
        let ratePercent = ratePercent ?? self.ratePercent
        let attributes = attributes ?? self.attributes

        return Networking.OrderTaxLine(
            taxID: taxID,
            rateCode: rateCode,
            rateID: rateID,
            label: label,
            isCompoundTaxRate: isCompoundTaxRate,
            totalTax: totalTax,
            totalShippingTax: totalShippingTax,
            ratePercent: ratePercent,
            attributes: attributes
        )
    }
}

extension Networking.PaymentGateway {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        gatewayID: CopiableProp<String> = .copy,
        title: CopiableProp<String> = .copy,
        description: CopiableProp<String> = .copy,
        enabled: CopiableProp<Bool> = .copy,
        features: CopiableProp<[PaymentGateway.Feature]> = .copy,
        instructions: NullableCopiableProp<String> = .copy
    ) -> Networking.PaymentGateway {
        let siteID = siteID ?? self.siteID
        let gatewayID = gatewayID ?? self.gatewayID
        let title = title ?? self.title
        let description = description ?? self.description
        let enabled = enabled ?? self.enabled
        let features = features ?? self.features
        let instructions = instructions ?? self.instructions

        return Networking.PaymentGateway(
            siteID: siteID,
            gatewayID: gatewayID,
            title: title,
            description: description,
            enabled: enabled,
            features: features,
            instructions: instructions
        )
    }
}

extension Networking.PaymentGateway.Setting {
    public func copy(
        settingID: CopiableProp<String> = .copy,
        value: CopiableProp<String> = .copy
    ) -> Networking.PaymentGateway.Setting {
        let settingID = settingID ?? self.settingID
        let value = value ?? self.value

        return Networking.PaymentGateway.Setting(
            settingID: settingID,
            value: value
        )
    }
}

extension Networking.PaymentGatewayAccount {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        gatewayID: CopiableProp<String> = .copy,
        status: CopiableProp<String> = .copy,
        hasPendingRequirements: CopiableProp<Bool> = .copy,
        hasOverdueRequirements: CopiableProp<Bool> = .copy,
        currentDeadline: NullableCopiableProp<Date> = .copy,
        statementDescriptor: CopiableProp<String> = .copy,
        defaultCurrency: CopiableProp<String> = .copy,
        supportedCurrencies: CopiableProp<[String]> = .copy,
        country: CopiableProp<String> = .copy,
        isCardPresentEligible: CopiableProp<Bool> = .copy,
        isLive: CopiableProp<Bool> = .copy,
        isInTestMode: CopiableProp<Bool> = .copy
    ) -> Networking.PaymentGatewayAccount {
        let siteID = siteID ?? self.siteID
        let gatewayID = gatewayID ?? self.gatewayID
        let status = status ?? self.status
        let hasPendingRequirements = hasPendingRequirements ?? self.hasPendingRequirements
        let hasOverdueRequirements = hasOverdueRequirements ?? self.hasOverdueRequirements
        let currentDeadline = currentDeadline ?? self.currentDeadline
        let statementDescriptor = statementDescriptor ?? self.statementDescriptor
        let defaultCurrency = defaultCurrency ?? self.defaultCurrency
        let supportedCurrencies = supportedCurrencies ?? self.supportedCurrencies
        let country = country ?? self.country
        let isCardPresentEligible = isCardPresentEligible ?? self.isCardPresentEligible
        let isLive = isLive ?? self.isLive
        let isInTestMode = isInTestMode ?? self.isInTestMode

        return Networking.PaymentGatewayAccount(
            siteID: siteID,
            gatewayID: gatewayID,
            status: status,
            hasPendingRequirements: hasPendingRequirements,
            hasOverdueRequirements: hasOverdueRequirements,
            currentDeadline: currentDeadline,
            statementDescriptor: statementDescriptor,
            defaultCurrency: defaultCurrency,
            supportedCurrencies: supportedCurrencies,
            country: country,
            isCardPresentEligible: isCardPresentEligible,
            isLive: isLive,
            isInTestMode: isInTestMode
        )
    }
}

extension Networking.Product {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        productID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        slug: CopiableProp<String> = .copy,
        permalink: CopiableProp<String> = .copy,
        date: CopiableProp<Date> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        dateModified: NullableCopiableProp<Date> = .copy,
        dateOnSaleStart: NullableCopiableProp<Date> = .copy,
        dateOnSaleEnd: NullableCopiableProp<Date> = .copy,
        productTypeKey: CopiableProp<String> = .copy,
        statusKey: CopiableProp<String> = .copy,
        featured: CopiableProp<Bool> = .copy,
        catalogVisibilityKey: CopiableProp<String> = .copy,
        fullDescription: NullableCopiableProp<String> = .copy,
        shortDescription: NullableCopiableProp<String> = .copy,
        sku: NullableCopiableProp<String> = .copy,
        price: CopiableProp<String> = .copy,
        regularPrice: NullableCopiableProp<String> = .copy,
        salePrice: NullableCopiableProp<String> = .copy,
        onSale: CopiableProp<Bool> = .copy,
        purchasable: CopiableProp<Bool> = .copy,
        totalSales: CopiableProp<Int> = .copy,
        virtual: CopiableProp<Bool> = .copy,
        downloadable: CopiableProp<Bool> = .copy,
        downloads: CopiableProp<[ProductDownload]> = .copy,
        downloadLimit: CopiableProp<Int64> = .copy,
        downloadExpiry: CopiableProp<Int64> = .copy,
        buttonText: CopiableProp<String> = .copy,
        externalURL: NullableCopiableProp<String> = .copy,
        taxStatusKey: CopiableProp<String> = .copy,
        taxClass: NullableCopiableProp<String> = .copy,
        manageStock: CopiableProp<Bool> = .copy,
        stockQuantity: NullableCopiableProp<Decimal> = .copy,
        stockStatusKey: CopiableProp<String> = .copy,
        backordersKey: CopiableProp<String> = .copy,
        backordersAllowed: CopiableProp<Bool> = .copy,
        backordered: CopiableProp<Bool> = .copy,
        soldIndividually: CopiableProp<Bool> = .copy,
        weight: NullableCopiableProp<String> = .copy,
        dimensions: CopiableProp<ProductDimensions> = .copy,
        shippingRequired: CopiableProp<Bool> = .copy,
        shippingTaxable: CopiableProp<Bool> = .copy,
        shippingClass: NullableCopiableProp<String> = .copy,
        shippingClassID: CopiableProp<Int64> = .copy,
        productShippingClass: NullableCopiableProp<ProductShippingClass> = .copy,
        reviewsAllowed: CopiableProp<Bool> = .copy,
        averageRating: CopiableProp<String> = .copy,
        ratingCount: CopiableProp<Int> = .copy,
        relatedIDs: CopiableProp<[Int64]> = .copy,
        upsellIDs: CopiableProp<[Int64]> = .copy,
        crossSellIDs: CopiableProp<[Int64]> = .copy,
        parentID: CopiableProp<Int64> = .copy,
        purchaseNote: NullableCopiableProp<String> = .copy,
        categories: CopiableProp<[ProductCategory]> = .copy,
        tags: CopiableProp<[ProductTag]> = .copy,
        images: CopiableProp<[ProductImage]> = .copy,
        attributes: CopiableProp<[ProductAttribute]> = .copy,
        defaultAttributes: CopiableProp<[ProductDefaultAttribute]> = .copy,
        variations: CopiableProp<[Int64]> = .copy,
        groupedProducts: CopiableProp<[Int64]> = .copy,
        menuOrder: CopiableProp<Int> = .copy,
        addOns: CopiableProp<[ProductAddOn]> = .copy,
        bundleLayout: NullableCopiableProp<ProductBundleLayout> = .copy,
        bundleFormLocation: NullableCopiableProp<ProductBundleFormLocation> = .copy,
        bundleItemGrouping: NullableCopiableProp<ProductBundleItemGrouping> = .copy,
        bundleMinSize: NullableCopiableProp<Int64> = .copy,
        bundleMaxSize: NullableCopiableProp<Int64> = .copy,
        bundleEditableInCart: NullableCopiableProp<Bool> = .copy,
        bundleSoldIndividuallyContext: NullableCopiableProp<ProductBundleSoldIndividuallyContext> = .copy,
        bundleStockStatus: NullableCopiableProp<ProductStockStatus> = .copy,
        bundleStockQuantity: NullableCopiableProp<Int64> = .copy,
        bundledItems: CopiableProp<[ProductBundleItem]> = .copy
    ) -> Networking.Product {
        let siteID = siteID ?? self.siteID
        let productID = productID ?? self.productID
        let name = name ?? self.name
        let slug = slug ?? self.slug
        let permalink = permalink ?? self.permalink
        let date = date ?? self.date
        let dateCreated = dateCreated ?? self.dateCreated
        let dateModified = dateModified ?? self.dateModified
        let dateOnSaleStart = dateOnSaleStart ?? self.dateOnSaleStart
        let dateOnSaleEnd = dateOnSaleEnd ?? self.dateOnSaleEnd
        let productTypeKey = productTypeKey ?? self.productTypeKey
        let statusKey = statusKey ?? self.statusKey
        let featured = featured ?? self.featured
        let catalogVisibilityKey = catalogVisibilityKey ?? self.catalogVisibilityKey
        let fullDescription = fullDescription ?? self.fullDescription
        let shortDescription = shortDescription ?? self.shortDescription
        let sku = sku ?? self.sku
        let price = price ?? self.price
        let regularPrice = regularPrice ?? self.regularPrice
        let salePrice = salePrice ?? self.salePrice
        let onSale = onSale ?? self.onSale
        let purchasable = purchasable ?? self.purchasable
        let totalSales = totalSales ?? self.totalSales
        let virtual = virtual ?? self.virtual
        let downloadable = downloadable ?? self.downloadable
        let downloads = downloads ?? self.downloads
        let downloadLimit = downloadLimit ?? self.downloadLimit
        let downloadExpiry = downloadExpiry ?? self.downloadExpiry
        let buttonText = buttonText ?? self.buttonText
        let externalURL = externalURL ?? self.externalURL
        let taxStatusKey = taxStatusKey ?? self.taxStatusKey
        let taxClass = taxClass ?? self.taxClass
        let manageStock = manageStock ?? self.manageStock
        let stockQuantity = stockQuantity ?? self.stockQuantity
        let stockStatusKey = stockStatusKey ?? self.stockStatusKey
        let backordersKey = backordersKey ?? self.backordersKey
        let backordersAllowed = backordersAllowed ?? self.backordersAllowed
        let backordered = backordered ?? self.backordered
        let soldIndividually = soldIndividually ?? self.soldIndividually
        let weight = weight ?? self.weight
        let dimensions = dimensions ?? self.dimensions
        let shippingRequired = shippingRequired ?? self.shippingRequired
        let shippingTaxable = shippingTaxable ?? self.shippingTaxable
        let shippingClass = shippingClass ?? self.shippingClass
        let shippingClassID = shippingClassID ?? self.shippingClassID
        let productShippingClass = productShippingClass ?? self.productShippingClass
        let reviewsAllowed = reviewsAllowed ?? self.reviewsAllowed
        let averageRating = averageRating ?? self.averageRating
        let ratingCount = ratingCount ?? self.ratingCount
        let relatedIDs = relatedIDs ?? self.relatedIDs
        let upsellIDs = upsellIDs ?? self.upsellIDs
        let crossSellIDs = crossSellIDs ?? self.crossSellIDs
        let parentID = parentID ?? self.parentID
        let purchaseNote = purchaseNote ?? self.purchaseNote
        let categories = categories ?? self.categories
        let tags = tags ?? self.tags
        let images = images ?? self.images
        let attributes = attributes ?? self.attributes
        let defaultAttributes = defaultAttributes ?? self.defaultAttributes
        let variations = variations ?? self.variations
        let groupedProducts = groupedProducts ?? self.groupedProducts
        let menuOrder = menuOrder ?? self.menuOrder
        let addOns = addOns ?? self.addOns
        let bundleLayout = bundleLayout ?? self.bundleLayout
        let bundleFormLocation = bundleFormLocation ?? self.bundleFormLocation
        let bundleItemGrouping = bundleItemGrouping ?? self.bundleItemGrouping
        let bundleMinSize = bundleMinSize ?? self.bundleMinSize
        let bundleMaxSize = bundleMaxSize ?? self.bundleMaxSize
        let bundleEditableInCart = bundleEditableInCart ?? self.bundleEditableInCart
        let bundleSoldIndividuallyContext = bundleSoldIndividuallyContext ?? self.bundleSoldIndividuallyContext
        let bundleStockStatus = bundleStockStatus ?? self.bundleStockStatus
        let bundleStockQuantity = bundleStockQuantity ?? self.bundleStockQuantity
        let bundledItems = bundledItems ?? self.bundledItems

        return Networking.Product(
            siteID: siteID,
            productID: productID,
            name: name,
            slug: slug,
            permalink: permalink,
            date: date,
            dateCreated: dateCreated,
            dateModified: dateModified,
            dateOnSaleStart: dateOnSaleStart,
            dateOnSaleEnd: dateOnSaleEnd,
            productTypeKey: productTypeKey,
            statusKey: statusKey,
            featured: featured,
            catalogVisibilityKey: catalogVisibilityKey,
            fullDescription: fullDescription,
            shortDescription: shortDescription,
            sku: sku,
            price: price,
            regularPrice: regularPrice,
            salePrice: salePrice,
            onSale: onSale,
            purchasable: purchasable,
            totalSales: totalSales,
            virtual: virtual,
            downloadable: downloadable,
            downloads: downloads,
            downloadLimit: downloadLimit,
            downloadExpiry: downloadExpiry,
            buttonText: buttonText,
            externalURL: externalURL,
            taxStatusKey: taxStatusKey,
            taxClass: taxClass,
            manageStock: manageStock,
            stockQuantity: stockQuantity,
            stockStatusKey: stockStatusKey,
            backordersKey: backordersKey,
            backordersAllowed: backordersAllowed,
            backordered: backordered,
            soldIndividually: soldIndividually,
            weight: weight,
            dimensions: dimensions,
            shippingRequired: shippingRequired,
            shippingTaxable: shippingTaxable,
            shippingClass: shippingClass,
            shippingClassID: shippingClassID,
            productShippingClass: productShippingClass,
            reviewsAllowed: reviewsAllowed,
            averageRating: averageRating,
            ratingCount: ratingCount,
            relatedIDs: relatedIDs,
            upsellIDs: upsellIDs,
            crossSellIDs: crossSellIDs,
            parentID: parentID,
            purchaseNote: purchaseNote,
            categories: categories,
            tags: tags,
            images: images,
            attributes: attributes,
            defaultAttributes: defaultAttributes,
            variations: variations,
            groupedProducts: groupedProducts,
            menuOrder: menuOrder,
            addOns: addOns,
            bundleLayout: bundleLayout,
            bundleFormLocation: bundleFormLocation,
            bundleItemGrouping: bundleItemGrouping,
            bundleMinSize: bundleMinSize,
            bundleMaxSize: bundleMaxSize,
            bundleEditableInCart: bundleEditableInCart,
            bundleSoldIndividuallyContext: bundleSoldIndividuallyContext,
            bundleStockStatus: bundleStockStatus,
            bundleStockQuantity: bundleStockQuantity,
            bundledItems: bundledItems
        )
    }
}

extension Networking.ProductAddOn {
    public func copy(
        type: CopiableProp<AddOnType> = .copy,
        display: CopiableProp<AddOnDisplay> = .copy,
        name: CopiableProp<String> = .copy,
        titleFormat: CopiableProp<AddOnTitleFormat> = .copy,
        descriptionEnabled: CopiableProp<Int> = .copy,
        description: CopiableProp<String> = .copy,
        required: CopiableProp<Int> = .copy,
        position: CopiableProp<Int> = .copy,
        restrictions: CopiableProp<Int> = .copy,
        restrictionsType: CopiableProp<AddOnRestrictionsType> = .copy,
        adjustPrice: CopiableProp<Int> = .copy,
        priceType: CopiableProp<AddOnPriceType> = .copy,
        price: CopiableProp<String> = .copy,
        min: CopiableProp<Int> = .copy,
        max: CopiableProp<Int> = .copy,
        options: CopiableProp<[ProductAddOnOption]> = .copy
    ) -> Networking.ProductAddOn {
        let type = type ?? self.type
        let display = display ?? self.display
        let name = name ?? self.name
        let titleFormat = titleFormat ?? self.titleFormat
        let descriptionEnabled = descriptionEnabled ?? self.descriptionEnabled
        let description = description ?? self.description
        let required = required ?? self.required
        let position = position ?? self.position
        let restrictions = restrictions ?? self.restrictions
        let restrictionsType = restrictionsType ?? self.restrictionsType
        let adjustPrice = adjustPrice ?? self.adjustPrice
        let priceType = priceType ?? self.priceType
        let price = price ?? self.price
        let min = min ?? self.min
        let max = max ?? self.max
        let options = options ?? self.options

        return Networking.ProductAddOn(
            type: type,
            display: display,
            name: name,
            titleFormat: titleFormat,
            descriptionEnabled: descriptionEnabled,
            description: description,
            required: required,
            position: position,
            restrictions: restrictions,
            restrictionsType: restrictionsType,
            adjustPrice: adjustPrice,
            priceType: priceType,
            price: price,
            min: min,
            max: max,
            options: options
        )
    }
}

extension Networking.ProductAddOnOption {
    public func copy(
        label: NullableCopiableProp<String> = .copy,
        price: NullableCopiableProp<String> = .copy,
        priceType: NullableCopiableProp<AddOnPriceType> = .copy,
        imageID: NullableCopiableProp<String> = .copy
    ) -> Networking.ProductAddOnOption {
        let label = label ?? self.label
        let price = price ?? self.price
        let priceType = priceType ?? self.priceType
        let imageID = imageID ?? self.imageID

        return Networking.ProductAddOnOption(
            label: label,
            price: price,
            priceType: priceType,
            imageID: imageID
        )
    }
}

extension Networking.ProductAttribute {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        attributeID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        position: CopiableProp<Int> = .copy,
        visible: CopiableProp<Bool> = .copy,
        variation: CopiableProp<Bool> = .copy,
        options: CopiableProp<[String]> = .copy
    ) -> Networking.ProductAttribute {
        let siteID = siteID ?? self.siteID
        let attributeID = attributeID ?? self.attributeID
        let name = name ?? self.name
        let position = position ?? self.position
        let visible = visible ?? self.visible
        let variation = variation ?? self.variation
        let options = options ?? self.options

        return Networking.ProductAttribute(
            siteID: siteID,
            attributeID: attributeID,
            name: name,
            position: position,
            visible: visible,
            variation: variation,
            options: options
        )
    }
}

extension Networking.ProductBundleItem {
    public func copy(
        bundledItemID: CopiableProp<Int64> = .copy,
        productID: CopiableProp<Int64> = .copy,
        menuOrder: CopiableProp<Int64> = .copy,
        quantityMin: CopiableProp<Int64> = .copy,
        quantityMax: NullableCopiableProp<Int64> = .copy,
        quantityDefault: CopiableProp<Int64> = .copy,
        pricedIndividually: CopiableProp<Bool> = .copy,
        shippedIndividually: CopiableProp<Bool> = .copy,
        overrideTitle: CopiableProp<Bool> = .copy,
        title: CopiableProp<String> = .copy,
        overrideDescription: CopiableProp<Bool> = .copy,
        description: CopiableProp<String> = .copy,
        optional: CopiableProp<Bool> = .copy,
        hideThumbnail: CopiableProp<Bool> = .copy,
        discount: CopiableProp<String> = .copy,
        overrideVariations: CopiableProp<Bool> = .copy,
        allowedVariations: CopiableProp<[Int64]> = .copy,
        overrideDefaultVariationAttributes: CopiableProp<Bool> = .copy,
        defaultVariationAttributes: CopiableProp<[ProductVariationAttribute]> = .copy,
        singleProductVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        cartVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        orderVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        singleProductPriceVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        cartPriceVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        orderPriceVisibility: CopiableProp<ProductBundleItemVisibility> = .copy,
        stockStatus: CopiableProp<ProductBundleItemStockStatus> = .copy
    ) -> Networking.ProductBundleItem {
        let bundledItemID = bundledItemID ?? self.bundledItemID
        let productID = productID ?? self.productID
        let menuOrder = menuOrder ?? self.menuOrder
        let quantityMin = quantityMin ?? self.quantityMin
        let quantityMax = quantityMax ?? self.quantityMax
        let quantityDefault = quantityDefault ?? self.quantityDefault
        let pricedIndividually = pricedIndividually ?? self.pricedIndividually
        let shippedIndividually = shippedIndividually ?? self.shippedIndividually
        let overrideTitle = overrideTitle ?? self.overrideTitle
        let title = title ?? self.title
        let overrideDescription = overrideDescription ?? self.overrideDescription
        let description = description ?? self.description
        let optional = optional ?? self.optional
        let hideThumbnail = hideThumbnail ?? self.hideThumbnail
        let discount = discount ?? self.discount
        let overrideVariations = overrideVariations ?? self.overrideVariations
        let allowedVariations = allowedVariations ?? self.allowedVariations
        let overrideDefaultVariationAttributes = overrideDefaultVariationAttributes ?? self.overrideDefaultVariationAttributes
        let defaultVariationAttributes = defaultVariationAttributes ?? self.defaultVariationAttributes
        let singleProductVisibility = singleProductVisibility ?? self.singleProductVisibility
        let cartVisibility = cartVisibility ?? self.cartVisibility
        let orderVisibility = orderVisibility ?? self.orderVisibility
        let singleProductPriceVisibility = singleProductPriceVisibility ?? self.singleProductPriceVisibility
        let cartPriceVisibility = cartPriceVisibility ?? self.cartPriceVisibility
        let orderPriceVisibility = orderPriceVisibility ?? self.orderPriceVisibility
        let stockStatus = stockStatus ?? self.stockStatus

        return Networking.ProductBundleItem(
            bundledItemID: bundledItemID,
            productID: productID,
            menuOrder: menuOrder,
            quantityMin: quantityMin,
            quantityMax: quantityMax,
            quantityDefault: quantityDefault,
            pricedIndividually: pricedIndividually,
            shippedIndividually: shippedIndividually,
            overrideTitle: overrideTitle,
            title: title,
            overrideDescription: overrideDescription,
            description: description,
            optional: optional,
            hideThumbnail: hideThumbnail,
            discount: discount,
            overrideVariations: overrideVariations,
            allowedVariations: allowedVariations,
            overrideDefaultVariationAttributes: overrideDefaultVariationAttributes,
            defaultVariationAttributes: defaultVariationAttributes,
            singleProductVisibility: singleProductVisibility,
            cartVisibility: cartVisibility,
            orderVisibility: orderVisibility,
            singleProductPriceVisibility: singleProductPriceVisibility,
            cartPriceVisibility: cartPriceVisibility,
            orderPriceVisibility: orderPriceVisibility,
            stockStatus: stockStatus
        )
    }
}

extension Networking.ProductImage {
    public func copy(
        imageID: CopiableProp<Int64> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        dateModified: NullableCopiableProp<Date> = .copy,
        src: CopiableProp<String> = .copy,
        name: NullableCopiableProp<String> = .copy,
        alt: NullableCopiableProp<String> = .copy
    ) -> Networking.ProductImage {
        let imageID = imageID ?? self.imageID
        let dateCreated = dateCreated ?? self.dateCreated
        let dateModified = dateModified ?? self.dateModified
        let src = src ?? self.src
        let name = name ?? self.name
        let alt = alt ?? self.alt

        return Networking.ProductImage(
            imageID: imageID,
            dateCreated: dateCreated,
            dateModified: dateModified,
            src: src,
            name: name,
            alt: alt
        )
    }
}

extension Networking.ProductReview {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        reviewID: CopiableProp<Int64> = .copy,
        productID: CopiableProp<Int64> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        statusKey: CopiableProp<String> = .copy,
        reviewer: CopiableProp<String> = .copy,
        reviewerEmail: CopiableProp<String> = .copy,
        reviewerAvatarURL: NullableCopiableProp<String> = .copy,
        review: CopiableProp<String> = .copy,
        rating: CopiableProp<Int> = .copy,
        verified: CopiableProp<Bool> = .copy
    ) -> Networking.ProductReview {
        let siteID = siteID ?? self.siteID
        let reviewID = reviewID ?? self.reviewID
        let productID = productID ?? self.productID
        let dateCreated = dateCreated ?? self.dateCreated
        let statusKey = statusKey ?? self.statusKey
        let reviewer = reviewer ?? self.reviewer
        let reviewerEmail = reviewerEmail ?? self.reviewerEmail
        let reviewerAvatarURL = reviewerAvatarURL ?? self.reviewerAvatarURL
        let review = review ?? self.review
        let rating = rating ?? self.rating
        let verified = verified ?? self.verified

        return Networking.ProductReview(
            siteID: siteID,
            reviewID: reviewID,
            productID: productID,
            dateCreated: dateCreated,
            statusKey: statusKey,
            reviewer: reviewer,
            reviewerEmail: reviewerEmail,
            reviewerAvatarURL: reviewerAvatarURL,
            review: review,
            rating: rating,
            verified: verified
        )
    }
}

extension Networking.ProductVariation {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        productID: CopiableProp<Int64> = .copy,
        productVariationID: CopiableProp<Int64> = .copy,
        attributes: CopiableProp<[ProductVariationAttribute]> = .copy,
        image: NullableCopiableProp<ProductImage> = .copy,
        permalink: CopiableProp<String> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        dateModified: NullableCopiableProp<Date> = .copy,
        dateOnSaleStart: NullableCopiableProp<Date> = .copy,
        dateOnSaleEnd: NullableCopiableProp<Date> = .copy,
        status: CopiableProp<ProductStatus> = .copy,
        description: NullableCopiableProp<String> = .copy,
        sku: NullableCopiableProp<String> = .copy,
        price: CopiableProp<String> = .copy,
        regularPrice: NullableCopiableProp<String> = .copy,
        salePrice: NullableCopiableProp<String> = .copy,
        onSale: CopiableProp<Bool> = .copy,
        purchasable: CopiableProp<Bool> = .copy,
        virtual: CopiableProp<Bool> = .copy,
        downloadable: CopiableProp<Bool> = .copy,
        downloads: CopiableProp<[ProductDownload]> = .copy,
        downloadLimit: CopiableProp<Int64> = .copy,
        downloadExpiry: CopiableProp<Int64> = .copy,
        taxStatusKey: CopiableProp<String> = .copy,
        taxClass: NullableCopiableProp<String> = .copy,
        manageStock: CopiableProp<Bool> = .copy,
        stockQuantity: NullableCopiableProp<Decimal> = .copy,
        stockStatus: CopiableProp<ProductStockStatus> = .copy,
        backordersKey: CopiableProp<String> = .copy,
        backordersAllowed: CopiableProp<Bool> = .copy,
        backordered: CopiableProp<Bool> = .copy,
        weight: NullableCopiableProp<String> = .copy,
        dimensions: CopiableProp<ProductDimensions> = .copy,
        shippingClass: NullableCopiableProp<String> = .copy,
        shippingClassID: CopiableProp<Int64> = .copy,
        menuOrder: CopiableProp<Int64> = .copy
    ) -> Networking.ProductVariation {
        let siteID = siteID ?? self.siteID
        let productID = productID ?? self.productID
        let productVariationID = productVariationID ?? self.productVariationID
        let attributes = attributes ?? self.attributes
        let image = image ?? self.image
        let permalink = permalink ?? self.permalink
        let dateCreated = dateCreated ?? self.dateCreated
        let dateModified = dateModified ?? self.dateModified
        let dateOnSaleStart = dateOnSaleStart ?? self.dateOnSaleStart
        let dateOnSaleEnd = dateOnSaleEnd ?? self.dateOnSaleEnd
        let status = status ?? self.status
        let description = description ?? self.description
        let sku = sku ?? self.sku
        let price = price ?? self.price
        let regularPrice = regularPrice ?? self.regularPrice
        let salePrice = salePrice ?? self.salePrice
        let onSale = onSale ?? self.onSale
        let purchasable = purchasable ?? self.purchasable
        let virtual = virtual ?? self.virtual
        let downloadable = downloadable ?? self.downloadable
        let downloads = downloads ?? self.downloads
        let downloadLimit = downloadLimit ?? self.downloadLimit
        let downloadExpiry = downloadExpiry ?? self.downloadExpiry
        let taxStatusKey = taxStatusKey ?? self.taxStatusKey
        let taxClass = taxClass ?? self.taxClass
        let manageStock = manageStock ?? self.manageStock
        let stockQuantity = stockQuantity ?? self.stockQuantity
        let stockStatus = stockStatus ?? self.stockStatus
        let backordersKey = backordersKey ?? self.backordersKey
        let backordersAllowed = backordersAllowed ?? self.backordersAllowed
        let backordered = backordered ?? self.backordered
        let weight = weight ?? self.weight
        let dimensions = dimensions ?? self.dimensions
        let shippingClass = shippingClass ?? self.shippingClass
        let shippingClassID = shippingClassID ?? self.shippingClassID
        let menuOrder = menuOrder ?? self.menuOrder

        return Networking.ProductVariation(
            siteID: siteID,
            productID: productID,
            productVariationID: productVariationID,
            attributes: attributes,
            image: image,
            permalink: permalink,
            dateCreated: dateCreated,
            dateModified: dateModified,
            dateOnSaleStart: dateOnSaleStart,
            dateOnSaleEnd: dateOnSaleEnd,
            status: status,
            description: description,
            sku: sku,
            price: price,
            regularPrice: regularPrice,
            salePrice: salePrice,
            onSale: onSale,
            purchasable: purchasable,
            virtual: virtual,
            downloadable: downloadable,
            downloads: downloads,
            downloadLimit: downloadLimit,
            downloadExpiry: downloadExpiry,
            taxStatusKey: taxStatusKey,
            taxClass: taxClass,
            manageStock: manageStock,
            stockQuantity: stockQuantity,
            stockStatus: stockStatus,
            backordersKey: backordersKey,
            backordersAllowed: backordersAllowed,
            backordered: backordered,
            weight: weight,
            dimensions: dimensions,
            shippingClass: shippingClass,
            shippingClassID: shippingClassID,
            menuOrder: menuOrder
        )
    }
}

extension Networking.Refund {
    public func copy(
        refundID: CopiableProp<Int64> = .copy,
        orderID: CopiableProp<Int64> = .copy,
        siteID: CopiableProp<Int64> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        amount: CopiableProp<String> = .copy,
        reason: CopiableProp<String> = .copy,
        refundedByUserID: CopiableProp<Int64> = .copy,
        isAutomated: NullableCopiableProp<Bool> = .copy,
        createAutomated: NullableCopiableProp<Bool> = .copy,
        items: CopiableProp<[OrderItemRefund]> = .copy,
        shippingLines: NullableCopiableProp<[ShippingLine]> = .copy
    ) -> Networking.Refund {
        let refundID = refundID ?? self.refundID
        let orderID = orderID ?? self.orderID
        let siteID = siteID ?? self.siteID
        let dateCreated = dateCreated ?? self.dateCreated
        let amount = amount ?? self.amount
        let reason = reason ?? self.reason
        let refundedByUserID = refundedByUserID ?? self.refundedByUserID
        let isAutomated = isAutomated ?? self.isAutomated
        let createAutomated = createAutomated ?? self.createAutomated
        let items = items ?? self.items
        let shippingLines = shippingLines ?? self.shippingLines

        return Networking.Refund(
            refundID: refundID,
            orderID: orderID,
            siteID: siteID,
            dateCreated: dateCreated,
            amount: amount,
            reason: reason,
            refundedByUserID: refundedByUserID,
            isAutomated: isAutomated,
            createAutomated: createAutomated,
            items: items,
            shippingLines: shippingLines
        )
    }
}

extension Networking.ShipmentTracking {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        orderID: CopiableProp<Int64> = .copy,
        trackingID: CopiableProp<String> = .copy,
        trackingNumber: CopiableProp<String> = .copy,
        trackingProvider: NullableCopiableProp<String> = .copy,
        trackingURL: NullableCopiableProp<String> = .copy,
        dateShipped: NullableCopiableProp<Date> = .copy
    ) -> Networking.ShipmentTracking {
        let siteID = siteID ?? self.siteID
        let orderID = orderID ?? self.orderID
        let trackingID = trackingID ?? self.trackingID
        let trackingNumber = trackingNumber ?? self.trackingNumber
        let trackingProvider = trackingProvider ?? self.trackingProvider
        let trackingURL = trackingURL ?? self.trackingURL
        let dateShipped = dateShipped ?? self.dateShipped

        return Networking.ShipmentTracking(
            siteID: siteID,
            orderID: orderID,
            trackingID: trackingID,
            trackingNumber: trackingNumber,
            trackingProvider: trackingProvider,
            trackingURL: trackingURL,
            dateShipped: dateShipped
        )
    }
}

extension Networking.ShippingLabel {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        orderID: CopiableProp<Int64> = .copy,
        shippingLabelID: CopiableProp<Int64> = .copy,
        carrierID: CopiableProp<String> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        packageName: CopiableProp<String> = .copy,
        rate: CopiableProp<Double> = .copy,
        currency: CopiableProp<String> = .copy,
        trackingNumber: CopiableProp<String> = .copy,
        serviceName: CopiableProp<String> = .copy,
        refundableAmount: CopiableProp<Double> = .copy,
        status: CopiableProp<ShippingLabelStatus> = .copy,
        refund: NullableCopiableProp<ShippingLabelRefund> = .copy,
        originAddress: CopiableProp<ShippingLabelAddress> = .copy,
        destinationAddress: CopiableProp<ShippingLabelAddress> = .copy,
        productIDs: CopiableProp<[Int64]> = .copy,
        productNames: CopiableProp<[String]> = .copy,
        commercialInvoiceURL: NullableCopiableProp<String> = .copy
    ) -> Networking.ShippingLabel {
        let siteID = siteID ?? self.siteID
        let orderID = orderID ?? self.orderID
        let shippingLabelID = shippingLabelID ?? self.shippingLabelID
        let carrierID = carrierID ?? self.carrierID
        let dateCreated = dateCreated ?? self.dateCreated
        let packageName = packageName ?? self.packageName
        let rate = rate ?? self.rate
        let currency = currency ?? self.currency
        let trackingNumber = trackingNumber ?? self.trackingNumber
        let serviceName = serviceName ?? self.serviceName
        let refundableAmount = refundableAmount ?? self.refundableAmount
        let status = status ?? self.status
        let refund = refund ?? self.refund
        let originAddress = originAddress ?? self.originAddress
        let destinationAddress = destinationAddress ?? self.destinationAddress
        let productIDs = productIDs ?? self.productIDs
        let productNames = productNames ?? self.productNames
        let commercialInvoiceURL = commercialInvoiceURL ?? self.commercialInvoiceURL

        return Networking.ShippingLabel(
            siteID: siteID,
            orderID: orderID,
            shippingLabelID: shippingLabelID,
            carrierID: carrierID,
            dateCreated: dateCreated,
            packageName: packageName,
            rate: rate,
            currency: currency,
            trackingNumber: trackingNumber,
            serviceName: serviceName,
            refundableAmount: refundableAmount,
            status: status,
            refund: refund,
            originAddress: originAddress,
            destinationAddress: destinationAddress,
            productIDs: productIDs,
            productNames: productNames,
            commercialInvoiceURL: commercialInvoiceURL
        )
    }
}

extension Networking.ShippingLabelAccountSettings {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        canManagePayments: CopiableProp<Bool> = .copy,
        canEditSettings: CopiableProp<Bool> = .copy,
        storeOwnerDisplayName: CopiableProp<String> = .copy,
        storeOwnerUsername: CopiableProp<String> = .copy,
        storeOwnerWpcomUsername: CopiableProp<String> = .copy,
        storeOwnerWpcomEmail: CopiableProp<String> = .copy,
        paymentMethods: CopiableProp<[ShippingLabelPaymentMethod]> = .copy,
        selectedPaymentMethodID: CopiableProp<Int64> = .copy,
        isEmailReceiptsEnabled: CopiableProp<Bool> = .copy,
        paperSize: CopiableProp<ShippingLabelPaperSize> = .copy,
        lastSelectedPackageID: CopiableProp<String> = .copy
    ) -> Networking.ShippingLabelAccountSettings {
        let siteID = siteID ?? self.siteID
        let canManagePayments = canManagePayments ?? self.canManagePayments
        let canEditSettings = canEditSettings ?? self.canEditSettings
        let storeOwnerDisplayName = storeOwnerDisplayName ?? self.storeOwnerDisplayName
        let storeOwnerUsername = storeOwnerUsername ?? self.storeOwnerUsername
        let storeOwnerWpcomUsername = storeOwnerWpcomUsername ?? self.storeOwnerWpcomUsername
        let storeOwnerWpcomEmail = storeOwnerWpcomEmail ?? self.storeOwnerWpcomEmail
        let paymentMethods = paymentMethods ?? self.paymentMethods
        let selectedPaymentMethodID = selectedPaymentMethodID ?? self.selectedPaymentMethodID
        let isEmailReceiptsEnabled = isEmailReceiptsEnabled ?? self.isEmailReceiptsEnabled
        let paperSize = paperSize ?? self.paperSize
        let lastSelectedPackageID = lastSelectedPackageID ?? self.lastSelectedPackageID

        return Networking.ShippingLabelAccountSettings(
            siteID: siteID,
            canManagePayments: canManagePayments,
            canEditSettings: canEditSettings,
            storeOwnerDisplayName: storeOwnerDisplayName,
            storeOwnerUsername: storeOwnerUsername,
            storeOwnerWpcomUsername: storeOwnerWpcomUsername,
            storeOwnerWpcomEmail: storeOwnerWpcomEmail,
            paymentMethods: paymentMethods,
            selectedPaymentMethodID: selectedPaymentMethodID,
            isEmailReceiptsEnabled: isEmailReceiptsEnabled,
            paperSize: paperSize,
            lastSelectedPackageID: lastSelectedPackageID
        )
    }
}

extension Networking.ShippingLabelAddress {
    public func copy(
        company: CopiableProp<String> = .copy,
        name: CopiableProp<String> = .copy,
        phone: CopiableProp<String> = .copy,
        country: CopiableProp<String> = .copy,
        state: CopiableProp<String> = .copy,
        address1: CopiableProp<String> = .copy,
        address2: CopiableProp<String> = .copy,
        city: CopiableProp<String> = .copy,
        postcode: CopiableProp<String> = .copy
    ) -> Networking.ShippingLabelAddress {
        let company = company ?? self.company
        let name = name ?? self.name
        let phone = phone ?? self.phone
        let country = country ?? self.country
        let state = state ?? self.state
        let address1 = address1 ?? self.address1
        let address2 = address2 ?? self.address2
        let city = city ?? self.city
        let postcode = postcode ?? self.postcode

        return Networking.ShippingLabelAddress(
            company: company,
            name: name,
            phone: phone,
            country: country,
            state: state,
            address1: address1,
            address2: address2,
            city: city,
            postcode: postcode
        )
    }
}

extension Networking.ShippingLabelCustomsForm {
    public func copy(
        packageID: CopiableProp<String> = .copy,
        packageName: CopiableProp<String> = .copy,
        contentsType: CopiableProp<ShippingLabelCustomsForm.ContentsType> = .copy,
        contentExplanation: CopiableProp<String> = .copy,
        restrictionType: CopiableProp<ShippingLabelCustomsForm.RestrictionType> = .copy,
        restrictionComments: CopiableProp<String> = .copy,
        nonDeliveryOption: CopiableProp<ShippingLabelCustomsForm.NonDeliveryOption> = .copy,
        itn: CopiableProp<String> = .copy,
        items: CopiableProp<[ShippingLabelCustomsForm.Item]> = .copy
    ) -> Networking.ShippingLabelCustomsForm {
        let packageID = packageID ?? self.packageID
        let packageName = packageName ?? self.packageName
        let contentsType = contentsType ?? self.contentsType
        let contentExplanation = contentExplanation ?? self.contentExplanation
        let restrictionType = restrictionType ?? self.restrictionType
        let restrictionComments = restrictionComments ?? self.restrictionComments
        let nonDeliveryOption = nonDeliveryOption ?? self.nonDeliveryOption
        let itn = itn ?? self.itn
        let items = items ?? self.items

        return Networking.ShippingLabelCustomsForm(
            packageID: packageID,
            packageName: packageName,
            contentsType: contentsType,
            contentExplanation: contentExplanation,
            restrictionType: restrictionType,
            restrictionComments: restrictionComments,
            nonDeliveryOption: nonDeliveryOption,
            itn: itn,
            items: items
        )
    }
}

extension Networking.ShippingLabelCustomsForm.Item {
    public func copy(
        description: CopiableProp<String> = .copy,
        quantity: CopiableProp<Decimal> = .copy,
        value: CopiableProp<Double> = .copy,
        weight: CopiableProp<Double> = .copy,
        hsTariffNumber: CopiableProp<String> = .copy,
        originCountry: CopiableProp<String> = .copy,
        productID: CopiableProp<Int64> = .copy
    ) -> Networking.ShippingLabelCustomsForm.Item {
        let description = description ?? self.description
        let quantity = quantity ?? self.quantity
        let value = value ?? self.value
        let weight = weight ?? self.weight
        let hsTariffNumber = hsTariffNumber ?? self.hsTariffNumber
        let originCountry = originCountry ?? self.originCountry
        let productID = productID ?? self.productID

        return Networking.ShippingLabelCustomsForm.Item(
            description: description,
            quantity: quantity,
            value: value,
            weight: weight,
            hsTariffNumber: hsTariffNumber,
            originCountry: originCountry,
            productID: productID
        )
    }
}

extension Networking.ShippingLabelPackagesResponse {
    public func copy(
        storeOptions: CopiableProp<ShippingLabelStoreOptions> = .copy,
        customPackages: CopiableProp<[ShippingLabelCustomPackage]> = .copy,
        predefinedOptions: CopiableProp<[ShippingLabelPredefinedOption]> = .copy,
        unactivatedPredefinedOptions: CopiableProp<[ShippingLabelPredefinedOption]> = .copy
    ) -> Networking.ShippingLabelPackagesResponse {
        let storeOptions = storeOptions ?? self.storeOptions
        let customPackages = customPackages ?? self.customPackages
        let predefinedOptions = predefinedOptions ?? self.predefinedOptions
        let unactivatedPredefinedOptions = unactivatedPredefinedOptions ?? self.unactivatedPredefinedOptions

        return Networking.ShippingLabelPackagesResponse(
            storeOptions: storeOptions,
            customPackages: customPackages,
            predefinedOptions: predefinedOptions,
            unactivatedPredefinedOptions: unactivatedPredefinedOptions
        )
    }
}

extension Networking.ShippingLabelPaymentMethod {
    public func copy(
        paymentMethodID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        cardType: CopiableProp<ShippingLabelPaymentCardType> = .copy,
        cardDigits: CopiableProp<String> = .copy,
        expiry: NullableCopiableProp<Date> = .copy
    ) -> Networking.ShippingLabelPaymentMethod {
        let paymentMethodID = paymentMethodID ?? self.paymentMethodID
        let name = name ?? self.name
        let cardType = cardType ?? self.cardType
        let cardDigits = cardDigits ?? self.cardDigits
        let expiry = expiry ?? self.expiry

        return Networking.ShippingLabelPaymentMethod(
            paymentMethodID: paymentMethodID,
            name: name,
            cardType: cardType,
            cardDigits: cardDigits,
            expiry: expiry
        )
    }
}

extension Networking.ShippingLabelPurchase {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        orderID: CopiableProp<Int64> = .copy,
        shippingLabelID: CopiableProp<Int64> = .copy,
        carrierID: NullableCopiableProp<String> = .copy,
        dateCreated: CopiableProp<Date> = .copy,
        packageName: CopiableProp<String> = .copy,
        trackingNumber: NullableCopiableProp<String> = .copy,
        serviceName: CopiableProp<String> = .copy,
        refundableAmount: CopiableProp<Double> = .copy,
        status: CopiableProp<ShippingLabelStatus> = .copy,
        productIDs: CopiableProp<[Int64]> = .copy,
        productNames: CopiableProp<[String]> = .copy
    ) -> Networking.ShippingLabelPurchase {
        let siteID = siteID ?? self.siteID
        let orderID = orderID ?? self.orderID
        let shippingLabelID = shippingLabelID ?? self.shippingLabelID
        let carrierID = carrierID ?? self.carrierID
        let dateCreated = dateCreated ?? self.dateCreated
        let packageName = packageName ?? self.packageName
        let trackingNumber = trackingNumber ?? self.trackingNumber
        let serviceName = serviceName ?? self.serviceName
        let refundableAmount = refundableAmount ?? self.refundableAmount
        let status = status ?? self.status
        let productIDs = productIDs ?? self.productIDs
        let productNames = productNames ?? self.productNames

        return Networking.ShippingLabelPurchase(
            siteID: siteID,
            orderID: orderID,
            shippingLabelID: shippingLabelID,
            carrierID: carrierID,
            dateCreated: dateCreated,
            packageName: packageName,
            trackingNumber: trackingNumber,
            serviceName: serviceName,
            refundableAmount: refundableAmount,
            status: status,
            productIDs: productIDs,
            productNames: productNames
        )
    }
}

extension Networking.ShippingLine {
    public func copy(
        shippingID: CopiableProp<Int64> = .copy,
        methodTitle: CopiableProp<String> = .copy,
        methodID: NullableCopiableProp<String> = .copy,
        total: CopiableProp<String> = .copy,
        totalTax: CopiableProp<String> = .copy,
        taxes: CopiableProp<[ShippingLineTax]> = .copy
    ) -> Networking.ShippingLine {
        let shippingID = shippingID ?? self.shippingID
        let methodTitle = methodTitle ?? self.methodTitle
        let methodID = methodID ?? self.methodID
        let total = total ?? self.total
        let totalTax = totalTax ?? self.totalTax
        let taxes = taxes ?? self.taxes

        return Networking.ShippingLine(
            shippingID: shippingID,
            methodTitle: methodTitle,
            methodID: methodID,
            total: total,
            totalTax: totalTax,
            taxes: taxes
        )
    }
}

extension Networking.Site {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        name: CopiableProp<String> = .copy,
        description: CopiableProp<String> = .copy,
        url: CopiableProp<String> = .copy,
        adminURL: CopiableProp<String> = .copy,
        loginURL: CopiableProp<String> = .copy,
        frameNonce: CopiableProp<String> = .copy,
        plan: CopiableProp<String> = .copy,
        isJetpackThePluginInstalled: CopiableProp<Bool> = .copy,
        isJetpackConnected: CopiableProp<Bool> = .copy,
        isWooCommerceActive: CopiableProp<Bool> = .copy,
        isWordPressComStore: CopiableProp<Bool> = .copy,
        jetpackConnectionActivePlugins: CopiableProp<[String]> = .copy,
        timezone: CopiableProp<String> = .copy,
        gmtOffset: CopiableProp<Double> = .copy
    ) -> Networking.Site {
        let siteID = siteID ?? self.siteID
        let name = name ?? self.name
        let description = description ?? self.description
        let url = url ?? self.url
        let adminURL = adminURL ?? self.adminURL
        let loginURL = loginURL ?? self.loginURL
        let frameNonce = frameNonce ?? self.frameNonce
        let plan = plan ?? self.plan
        let isJetpackThePluginInstalled = isJetpackThePluginInstalled ?? self.isJetpackThePluginInstalled
        let isJetpackConnected = isJetpackConnected ?? self.isJetpackConnected
        let isWooCommerceActive = isWooCommerceActive ?? self.isWooCommerceActive
        let isWordPressComStore = isWordPressComStore ?? self.isWordPressComStore
        let jetpackConnectionActivePlugins = jetpackConnectionActivePlugins ?? self.jetpackConnectionActivePlugins
        let timezone = timezone ?? self.timezone
        let gmtOffset = gmtOffset ?? self.gmtOffset

        return Networking.Site(
            siteID: siteID,
            name: name,
            description: description,
            url: url,
            adminURL: adminURL,
            loginURL: loginURL,
            frameNonce: frameNonce,
            plan: plan,
            isJetpackThePluginInstalled: isJetpackThePluginInstalled,
            isJetpackConnected: isJetpackConnected,
            isWooCommerceActive: isWooCommerceActive,
            isWordPressComStore: isWordPressComStore,
            jetpackConnectionActivePlugins: jetpackConnectionActivePlugins,
            timezone: timezone,
            gmtOffset: gmtOffset
        )
    }
}

extension Networking.SitePlugin {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        plugin: CopiableProp<String> = .copy,
        status: CopiableProp<SitePluginStatusEnum> = .copy,
        name: CopiableProp<String> = .copy,
        pluginUri: CopiableProp<String> = .copy,
        author: CopiableProp<String> = .copy,
        authorUri: CopiableProp<String> = .copy,
        descriptionRaw: CopiableProp<String> = .copy,
        descriptionRendered: CopiableProp<String> = .copy,
        version: CopiableProp<String> = .copy,
        networkOnly: CopiableProp<Bool> = .copy,
        requiresWPVersion: CopiableProp<String> = .copy,
        requiresPHPVersion: CopiableProp<String> = .copy,
        textDomain: CopiableProp<String> = .copy
    ) -> Networking.SitePlugin {
        let siteID = siteID ?? self.siteID
        let plugin = plugin ?? self.plugin
        let status = status ?? self.status
        let name = name ?? self.name
        let pluginUri = pluginUri ?? self.pluginUri
        let author = author ?? self.author
        let authorUri = authorUri ?? self.authorUri
        let descriptionRaw = descriptionRaw ?? self.descriptionRaw
        let descriptionRendered = descriptionRendered ?? self.descriptionRendered
        let version = version ?? self.version
        let networkOnly = networkOnly ?? self.networkOnly
        let requiresWPVersion = requiresWPVersion ?? self.requiresWPVersion
        let requiresPHPVersion = requiresPHPVersion ?? self.requiresPHPVersion
        let textDomain = textDomain ?? self.textDomain

        return Networking.SitePlugin(
            siteID: siteID,
            plugin: plugin,
            status: status,
            name: name,
            pluginUri: pluginUri,
            author: author,
            authorUri: authorUri,
            descriptionRaw: descriptionRaw,
            descriptionRendered: descriptionRendered,
            version: version,
            networkOnly: networkOnly,
            requiresWPVersion: requiresWPVersion,
            requiresPHPVersion: requiresPHPVersion,
            textDomain: textDomain
        )
    }
}

extension Networking.SiteSetting {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        settingID: CopiableProp<String> = .copy,
        label: CopiableProp<String> = .copy,
        settingDescription: CopiableProp<String> = .copy,
        value: CopiableProp<String> = .copy,
        settingGroupKey: CopiableProp<String> = .copy
    ) -> Networking.SiteSetting {
        let siteID = siteID ?? self.siteID
        let settingID = settingID ?? self.settingID
        let label = label ?? self.label
        let settingDescription = settingDescription ?? self.settingDescription
        let value = value ?? self.value
        let settingGroupKey = settingGroupKey ?? self.settingGroupKey

        return Networking.SiteSetting(
            siteID: siteID,
            settingID: settingID,
            label: label,
            settingDescription: settingDescription,
            value: value,
            settingGroupKey: settingGroupKey
        )
    }
}

extension Networking.SiteSummaryStats {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        date: CopiableProp<String> = .copy,
        period: CopiableProp<StatGranularity> = .copy,
        visitors: CopiableProp<Int> = .copy,
        views: CopiableProp<Int> = .copy
    ) -> Networking.SiteSummaryStats {
        let siteID = siteID ?? self.siteID
        let date = date ?? self.date
        let period = period ?? self.period
        let visitors = visitors ?? self.visitors
        let views = views ?? self.views

        return Networking.SiteSummaryStats(
            siteID: siteID,
            date: date,
            period: period,
            visitors: visitors,
            views: views
        )
    }
}

extension Networking.SiteVisitStats {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        date: CopiableProp<String> = .copy,
        granularity: CopiableProp<StatGranularity> = .copy,
        items: NullableCopiableProp<[SiteVisitStatsItem]> = .copy
    ) -> Networking.SiteVisitStats {
        let siteID = siteID ?? self.siteID
        let date = date ?? self.date
        let granularity = granularity ?? self.granularity
        let items = items ?? self.items

        return Networking.SiteVisitStats(
            siteID: siteID,
            date: date,
            granularity: granularity,
            items: items
        )
    }
}

extension Networking.SiteVisitStatsItem {
    public func copy(
        period: CopiableProp<String> = .copy,
        visitors: CopiableProp<Int> = .copy,
        views: CopiableProp<Int> = .copy
    ) -> Networking.SiteVisitStatsItem {
        let period = period ?? self.period
        let visitors = visitors ?? self.visitors
        let views = views ?? self.views

        return Networking.SiteVisitStatsItem(
            period: period,
            visitors: visitors,
            views: views
        )
    }
}

extension Networking.SystemPlugin {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        plugin: CopiableProp<String> = .copy,
        name: CopiableProp<String> = .copy,
        version: CopiableProp<String> = .copy,
        versionLatest: CopiableProp<String> = .copy,
        url: CopiableProp<String> = .copy,
        authorName: CopiableProp<String> = .copy,
        authorUrl: CopiableProp<String> = .copy,
        networkActivated: CopiableProp<Bool> = .copy,
        active: CopiableProp<Bool> = .copy
    ) -> Networking.SystemPlugin {
        let siteID = siteID ?? self.siteID
        let plugin = plugin ?? self.plugin
        let name = name ?? self.name
        let version = version ?? self.version
        let versionLatest = versionLatest ?? self.versionLatest
        let url = url ?? self.url
        let authorName = authorName ?? self.authorName
        let authorUrl = authorUrl ?? self.authorUrl
        let networkActivated = networkActivated ?? self.networkActivated
        let active = active ?? self.active

        return Networking.SystemPlugin(
            siteID: siteID,
            plugin: plugin,
            name: name,
            version: version,
            versionLatest: versionLatest,
            url: url,
            authorName: authorName,
            authorUrl: authorUrl,
            networkActivated: networkActivated,
            active: active
        )
    }
}

extension Networking.TopEarnerStats {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        date: CopiableProp<String> = .copy,
        granularity: CopiableProp<StatGranularity> = .copy,
        limit: CopiableProp<String> = .copy,
        items: NullableCopiableProp<[TopEarnerStatsItem]> = .copy
    ) -> Networking.TopEarnerStats {
        let siteID = siteID ?? self.siteID
        let date = date ?? self.date
        let granularity = granularity ?? self.granularity
        let limit = limit ?? self.limit
        let items = items ?? self.items

        return Networking.TopEarnerStats(
            siteID: siteID,
            date: date,
            granularity: granularity,
            limit: limit,
            items: items
        )
    }
}

extension Networking.TopEarnerStatsItem {
    public func copy(
        productID: CopiableProp<Int64> = .copy,
        productName: NullableCopiableProp<String> = .copy,
        quantity: CopiableProp<Int> = .copy,
        price: CopiableProp<Double> = .copy,
        total: CopiableProp<Double> = .copy,
        currency: CopiableProp<String> = .copy,
        imageUrl: NullableCopiableProp<String> = .copy
    ) -> Networking.TopEarnerStatsItem {
        let productID = productID ?? self.productID
        let productName = productName ?? self.productName
        let quantity = quantity ?? self.quantity
        let price = price ?? self.price
        let total = total ?? self.total
        let currency = currency ?? self.currency
        let imageUrl = imageUrl ?? self.imageUrl

        return Networking.TopEarnerStatsItem(
            productID: productID,
            productName: productName,
            quantity: quantity,
            price: price,
            total: total,
            currency: currency,
            imageUrl: imageUrl
        )
    }
}

extension Networking.User {
    public func copy(
        localID: CopiableProp<Int64> = .copy,
        siteID: CopiableProp<Int64> = .copy,
        email: CopiableProp<String> = .copy,
        username: CopiableProp<String> = .copy,
        firstName: CopiableProp<String> = .copy,
        lastName: CopiableProp<String> = .copy,
        nickname: CopiableProp<String> = .copy,
        roles: CopiableProp<[String]> = .copy
    ) -> Networking.User {
        let localID = localID ?? self.localID
        let siteID = siteID ?? self.siteID
        let email = email ?? self.email
        let username = username ?? self.username
        let firstName = firstName ?? self.firstName
        let lastName = lastName ?? self.lastName
        let nickname = nickname ?? self.nickname
        let roles = roles ?? self.roles

        return Networking.User(
            localID: localID,
            siteID: siteID,
            email: email,
            username: username,
            firstName: firstName,
            lastName: lastName,
            nickname: nickname,
            roles: roles
        )
    }
}

extension Networking.WCAnalyticsCustomer {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        userID: CopiableProp<Int64> = .copy,
        name: NullableCopiableProp<String> = .copy
    ) -> Networking.WCAnalyticsCustomer {
        let siteID = siteID ?? self.siteID
        let userID = userID ?? self.userID
        let name = name ?? self.name

        return Networking.WCAnalyticsCustomer(
            siteID: siteID,
            userID: userID,
            name: name
        )
    }
}

extension Networking.WCPayCardPaymentDetails {
    public func copy(
        brand: CopiableProp<WCPayCardBrand> = .copy,
        last4: CopiableProp<String> = .copy,
        funding: CopiableProp<WCPayCardFunding> = .copy
    ) -> Networking.WCPayCardPaymentDetails {
        let brand = brand ?? self.brand
        let last4 = last4 ?? self.last4
        let funding = funding ?? self.funding

        return Networking.WCPayCardPaymentDetails(
            brand: brand,
            last4: last4,
            funding: funding
        )
    }
}

extension Networking.WCPayCardPresentPaymentDetails {
    public func copy(
        brand: CopiableProp<WCPayCardBrand> = .copy,
        last4: CopiableProp<String> = .copy,
        funding: CopiableProp<WCPayCardFunding> = .copy,
        receipt: CopiableProp<WCPayCardPresentReceiptDetails> = .copy
    ) -> Networking.WCPayCardPresentPaymentDetails {
        let brand = brand ?? self.brand
        let last4 = last4 ?? self.last4
        let funding = funding ?? self.funding
        let receipt = receipt ?? self.receipt

        return Networking.WCPayCardPresentPaymentDetails(
            brand: brand,
            last4: last4,
            funding: funding,
            receipt: receipt
        )
    }
}

extension Networking.WCPayCardPresentReceiptDetails {
    public func copy(
        accountType: CopiableProp<WCPayCardFunding> = .copy,
        applicationPreferredName: NullableCopiableProp<String> = .copy,
        dedicatedFileName: NullableCopiableProp<String> = .copy
    ) -> Networking.WCPayCardPresentReceiptDetails {
        let accountType = accountType ?? self.accountType
        let applicationPreferredName = applicationPreferredName ?? self.applicationPreferredName
        let dedicatedFileName = dedicatedFileName ?? self.dedicatedFileName

        return Networking.WCPayCardPresentReceiptDetails(
            accountType: accountType,
            applicationPreferredName: applicationPreferredName,
            dedicatedFileName: dedicatedFileName
        )
    }
}

extension Networking.WCPayCharge {
    public func copy(
        siteID: CopiableProp<Int64> = .copy,
        id: CopiableProp<String> = .copy,
        amount: CopiableProp<Int64> = .copy,
        amountCaptured: CopiableProp<Int64> = .copy,
        amountRefunded: CopiableProp<Int64> = .copy,
        authorizationCode: NullableCopiableProp<String> = .copy,
        captured: CopiableProp<Bool> = .copy,
        created: CopiableProp<Date> = .copy,
        currency: CopiableProp<String> = .copy,
        paid: CopiableProp<Bool> = .copy,
        paymentIntentID: NullableCopiableProp<String> = .copy,
        paymentMethodID: CopiableProp<String> = .copy,
        paymentMethodDetails: CopiableProp<WCPayPaymentMethodDetails> = .copy,
        refunded: CopiableProp<Bool> = .copy,
        status: CopiableProp<WCPayChargeStatus> = .copy
    ) -> Networking.WCPayCharge {
        let siteID = siteID ?? self.siteID
        let id = id ?? self.id
        let amount = amount ?? self.amount
        let amountCaptured = amountCaptured ?? self.amountCaptured
        let amountRefunded = amountRefunded ?? self.amountRefunded
        let authorizationCode = authorizationCode ?? self.authorizationCode
        let captured = captured ?? self.captured
        let created = created ?? self.created
        let currency = currency ?? self.currency
        let paid = paid ?? self.paid
        let paymentIntentID = paymentIntentID ?? self.paymentIntentID
        let paymentMethodID = paymentMethodID ?? self.paymentMethodID
        let paymentMethodDetails = paymentMethodDetails ?? self.paymentMethodDetails
        let refunded = refunded ?? self.refunded
        let status = status ?? self.status

        return Networking.WCPayCharge(
            siteID: siteID,
            id: id,
            amount: amount,
            amountCaptured: amountCaptured,
            amountRefunded: amountRefunded,
            authorizationCode: authorizationCode,
            captured: captured,
            created: created,
            currency: currency,
            paid: paid,
            paymentIntentID: paymentIntentID,
            paymentMethodID: paymentMethodID,
            paymentMethodDetails: paymentMethodDetails,
            refunded: refunded,
            status: status
        )
    }
}

extension Networking.WordPressMedia {
    public func copy(
        mediaID: CopiableProp<Int64> = .copy,
        date: CopiableProp<Date> = .copy,
        slug: CopiableProp<String> = .copy,
        mimeType: CopiableProp<String> = .copy,
        src: CopiableProp<String> = .copy,
        alt: NullableCopiableProp<String> = .copy,
        details: NullableCopiableProp<WordPressMedia.MediaDetails> = .copy,
        title: NullableCopiableProp<WordPressMedia.MediaTitle> = .copy
    ) -> Networking.WordPressMedia {
        let mediaID = mediaID ?? self.mediaID
        let date = date ?? self.date
        let slug = slug ?? self.slug
        let mimeType = mimeType ?? self.mimeType
        let src = src ?? self.src
        let alt = alt ?? self.alt
        let details = details ?? self.details
        let title = title ?? self.title

        return Networking.WordPressMedia(
            mediaID: mediaID,
            date: date,
            slug: slug,
            mimeType: mimeType,
            src: src,
            alt: alt,
            details: details,
            title: title
        )
    }
}
