.class Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field private static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_ADMIN_CAN_GRANT_SENSORS_PERMISSIONS:Ljava/lang/String; = "admin-can-grant-sensors-permissions"

.field private static final TAG_ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "vpn-lockdown"

.field private static final TAG_ALWAYS_ON_VPN_PACKAGE:Ljava/lang/String; = "vpn-package"

.field private static final TAG_COMMON_CRITERIA_MODE:Ljava/lang/String; = "common-criteria-mode"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES:Ljava/lang/String; = "cross-profile-calendar-packages"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL:Ljava/lang/String; = "cross-profile-calendar-packages-null"

.field private static final TAG_CROSS_PROFILE_PACKAGES:Ljava/lang/String; = "cross-profile-packages"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field private static final TAG_ENROLLMENT_SPECIFIC_ID:Ljava/lang/String; = "enrollment-specific-id"

.field private static final TAG_FACTORY_RESET_PROTECTION_POLICY:Ljava/lang/String; = "factory_reset_protection_policy"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field private static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_NEARBY_APP_STREAMING_POLICY:Ljava/lang/String; = "nearby-app-streaming-policy"

.field private static final TAG_NEARBY_NOTIFICATION_STREAMING_POLICY:Ljava/lang/String; = "nearby-notification-streaming-policy"

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_ID:Ljava/lang/String; = "organization-id"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_COMPLEXITY:Ljava/lang/String; = "password-complexity"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PREFERENTIAL_NETWORK_SERVICE_ENABLED:Ljava/lang/String; = "preferential-network-service-enabled"

.field private static final TAG_PROFILE_MAXIMUM_TIME_OFF:Ljava/lang/String; = "profile-max-time-off"

.field private static final TAG_PROFILE_OFF_DEADLINE:Ljava/lang/String; = "profile-off-deadline"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_SUSPEND_PERSONAL_APPS:Ljava/lang/String; = "suspend-personal-apps"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USB_DATA_SIGNALING:Ljava/lang/String; = "usb-data-signaling"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"

.field private static final USB_DATA_SIGNALING_ENABLED_DEFAULT:Z = true


# instance fields
.field final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field endUserSessionMessage:Ljava/lang/String;

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field info:Landroid/app/admin/DeviceAdminInfo;

.field isLogoutEnabled:Z

.field isNetworkLoggingEnabled:Z

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastNetworkLoggingNotificationTimeMs:J

.field longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field mCommonCriteriaMode:Z

.field mCrossProfileCalendarPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCrossProfilePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field mNearbyAppStreamingPolicy:I

.field mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field mPasswordComplexity:I

.field mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceEnabled:Z

.field mProfileMaximumTimeOffMillis:J

.field mProfileOffDeadline:J

.field mSuspendPersonalApps:Z

.field mUsbDataSignalingEnabled:Z

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field numNetworkLoggingNotifications:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field startUserSessionMessage:Ljava/lang/String;

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    iput-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    return-void
.end method

.method static filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_4

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "component"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "DevicePolicyManager"

    const-string v6, "Unknown tag under %s: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_4

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "trust-agent-component-options"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "DevicePolicyManager"

    const-string v6, "Unknown tag under %s: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static synthetic lambda$getGlobalUserRestrictions$1(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getLocalUserRestrictions$0(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isLocal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v1, v4, v3

    const-string v3, "DevicePolicyManager"

    const-string v5, "Expected tag %s but found %s"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_5

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "DevicePolicyManager"

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const-string/jumbo v8, "value"

    invoke-interface {p1, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const-string v6, "Package name missing under %s"

    invoke-static {v7, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "Unknown tag under %s: "

    invoke-static {v7, v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    goto :goto_0

    :cond_5
    return-object v0
.end method

.method static removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no_camera"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object p1
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    const-string/jumbo v1, "passwordQuality=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordLength="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "passwordHistoryLength="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordUpperCase="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordLowerCase="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordLetters="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordNumeric="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordSymbols="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "minimumPasswordNonLetter="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "maximumTimeToUnlock="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "strongAuthUnlockTimeout="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "maximumFailedPasswordsForWipe="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "specifiesGlobalProxy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "passwordExpirationTimeout="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "passwordExpirationDate="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "globalProxySpec="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "globalProxyEclusionList="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string v1, "encryptionRequested="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disableCamera="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disableCallerId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disableContactsSearch="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disableBluetoothContactSharing="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disableScreenCapture="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "requireAutoTime="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "forceEphemeralUsers="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "isNetworkLoggingEnabled="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "disabledKeyguardFeatures="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v1, "crossProfileWidgetProviders="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "permittedAccessibilityServices="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "permittedInputMethods="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "permittedNotificationListeners="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "keepUninstalledPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    const-string/jumbo v1, "organizationColor="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string/jumbo v1, "organizationName="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v1, "userRestrictions:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string v2, "  "

    invoke-static {p1, v2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v1, "isParent="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v1, :cond_9

    const-string/jumbo v1, "parentAdmin:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v1, :cond_a

    const-string/jumbo v1, "mCrossProfileCalendarPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    const-string/jumbo v1, "mCrossProfilePackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v1, "mSuspendPersonalApps="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mProfileMaximumTimeOffMillis="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mProfileOffDeadline="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mAlwaysOnVpnPackage="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mAlwaysOnVpnLockdown="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mPreferentialNetworkServiceEnabled="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mCommonCriteriaMode="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mPasswordComplexity="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mNearbyNotificationStreamingPolicy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mNearbyAppStreamingPolicy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "mOrganizationId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "mEnrollmentSpecificId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v1, "mAdminCanGrantSensorsPermissions="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mUsbDataSignaling="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object v0
.end method

.method getEffectiveRestrictions()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getGlobalUserRestrictions(I)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getLocalUserRestrictions(I)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasUserRestrictions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readFromXml(Landroid/util/TypedXmlPullParser;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4c

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4c

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "DevicePolicyManager"

    if-eqz v5, :cond_3

    if-eqz p2, :cond_4b

    const-string v1, "Overriding device admin policies from XML."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "password-quality"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->length:I

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "max-time-to-unlock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "strong-auth-unlock-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_10

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_1

    :cond_10
    const-string v5, "global-proxy-spec"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    nop

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v5, "global-proxy-exclusion-list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    nop

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "password-expiration-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_1

    :cond_14
    const-string v5, "encryption-requested"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_1

    :cond_16
    const-string v5, "disable-camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    goto/16 :goto_1

    :cond_17
    const-string v5, "disable-caller-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_1

    :cond_18
    const-string v5, "disable-contacts-search"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_1

    :cond_19
    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    nop

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_1

    :cond_1a
    const-string v5, "disable-screen-capture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_1

    :cond_1c
    const-string v5, "force_ephemeral_users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v5, "is_network_logging_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v1, "last-notification"

    invoke-interface {p1, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v1, "num-notifications"

    invoke-interface {p1, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_1

    :cond_1e
    const-string v5, "disable-keyguard-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_1

    :cond_1f
    const-string v5, "disable-account-management"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v3, "account-type"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v5, "manage-trust-agent-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_1

    :cond_21
    const-string v5, "cross-profile-widget-providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v3, "provider"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v5, "permitted-accessiblity-services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v5, "permitted-imes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v5, "permitted-notification-listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v5, "keep-uninstalled-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v5, "metered_data_disabled_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v5, "user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_1

    :cond_28
    const-string v5, "default-enabled-user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v3, "restriction"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v5, "short-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_2a

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_2a
    const-string v1, "Missing text when loading short support message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v5, "long-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_2c

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_2c
    const-string v1, "Missing text when loading long support message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v5, "parent-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v5, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v5, "organization-color"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v5, "organization-name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_30

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_30
    const-string v1, "Missing text when loading organization name"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_31
    const-string/jumbo v5, "is_logout_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_1

    :cond_32
    const-string/jumbo v5, "start_user_session_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_33

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_33
    const-string v1, "Missing text when loading start session message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_34
    const-string v5, "end_user_session_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_35

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_35
    const-string v1, "Missing text when loading end session message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_36
    const-string v5, "cross-profile-calendar-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_1

    :cond_37
    const-string v5, "cross-profile-calendar-packages-null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iput-object v8, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_1

    :cond_38
    const-string v5, "cross-profile-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_1

    :cond_39
    const-string v5, "factory_reset_protection_policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v5, "suspend-personal-apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_1

    :cond_3b
    const-string/jumbo v5, "profile-max-time-off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    nop

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto/16 :goto_1

    :cond_3c
    const-string/jumbo v5, "profile-off-deadline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    nop

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    goto/16 :goto_1

    :cond_3d
    const-string/jumbo v5, "vpn-package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3e
    const-string/jumbo v5, "vpn-lockdown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto/16 :goto_1

    :cond_3f
    const-string/jumbo v5, "preferential-network-service-enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    goto/16 :goto_1

    :cond_40
    const-string v5, "common-criteria-mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    goto/16 :goto_1

    :cond_41
    const-string/jumbo v5, "password-complexity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    goto/16 :goto_1

    :cond_42
    const-string/jumbo v5, "nearby-notification-streaming-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    goto/16 :goto_1

    :cond_43
    const-string/jumbo v5, "nearby-app-streaming-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    goto :goto_1

    :cond_44
    const-string/jumbo v5, "organization-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_45

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    goto :goto_1

    :cond_45
    const-string v1, "Missing Organization ID."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_46
    const-string v5, "enrollment-specific-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_47

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    goto :goto_1

    :cond_47
    const-string v1, "Missing Enrollment-specific ID."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_48
    const-string v1, "admin-can-grant-sensors-permissions"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto :goto_1

    :cond_49
    const-string/jumbo v1, "usb-data-signaling"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1, v8, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    goto :goto_1

    :cond_4a
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v9

    const-string v3, "Unknown admin tag: %s"

    invoke-static {v6, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_4b
    :goto_1
    goto/16 :goto_0

    :cond_4c
    return-void
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3, p4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "item"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, p3}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string/jumbo v0, "policies"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, v2}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const-string/jumbo v5, "password-quality"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    if-eq v0, v4, :cond_3

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v0, v4, :cond_4

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_4
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v0, v4, :cond_5

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_5
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_6
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_7

    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_7
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_8

    const-string/jumbo v0, "max-time-to-unlock"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_8
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v9, 0xf731400

    cmp-long v0, v5, v9

    if-eqz v0, :cond_9

    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_9
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_a

    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_a
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_c

    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v5, "global-proxy-spec"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v5, "global-proxy-exclusion-list"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_d

    const-string/jumbo v0, "password-expiration-timeout"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_d
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_e

    const-string/jumbo v0, "password-expiration-date"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_f

    const-string v5, "encryption-requested"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_f
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_10

    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_10
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_11

    const-string v5, "disable-camera"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_11
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_12

    const-string v5, "disable-caller-id"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_12
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_13

    const-string v5, "disable-contacts-search"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_13
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_14

    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_14
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_15

    const-string v5, "disable-screen-capture"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_15
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_16

    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_16
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_17

    const-string v5, "force_ephemeral_users"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_17
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v5, "value"

    if-eqz v0, :cond_18

    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-interface {v2, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    const-string/jumbo v9, "num-notifications"

    invoke-interface {v2, v3, v9, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v9, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v6, "last-notification"

    invoke-interface {v2, v3, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_19

    const-string v6, "disable-keyguard-features"

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_19
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v6, "disable-account-management"

    const-string v9, "account-type"

    invoke-virtual {v1, v2, v6, v9, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1a
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    const-string/jumbo v9, "manage-trust-agent-features"

    invoke-interface {v2, v3, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const-string v13, "component"

    invoke-interface {v2, v3, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v5, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1b

    const-string/jumbo v14, "trust-agent-component-options"

    invoke-interface {v2, v3, v14}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_0
    iget-object v0, v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const-string v4, "DevicePolicyManager"

    const-string v7, "Failed to save TrustAgent options"

    invoke-static {v4, v0, v7, v15}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v2, v3, v14}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    invoke-interface {v2, v3, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_1c
    invoke-interface {v2, v3, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string v4, "cross-profile-widget-providers"

    const-string/jumbo v5, "provider"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_1e
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    const-string/jumbo v4, "permitted-accessiblity-services"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v4, "permitted-imes"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    const-string/jumbo v4, "permitted-notification-listeners"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    const-string/jumbo v4, "keep-uninstalled-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    const-string/jumbo v4, "metered_data_disabled_packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasUserRestrictions()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v4, "user-restrictions"

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string v4, "default-enabled-user-restrictions"

    const-string/jumbo v5, "restriction"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_20
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "short-support-message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "long-support-message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_23

    const-string/jumbo v0, "parent-admin"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v4, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_23
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    sget v4, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v4, :cond_24

    const-string/jumbo v4, "organization-color"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_24
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string/jumbo v4, "organization-name"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_26

    const-string/jumbo v4, "is_logout_enabled"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_26
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_27

    const-string/jumbo v4, "start_user_session_message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_28

    const-string v4, "end_user_session_message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v0, :cond_29

    const-string v0, "cross-profile-calendar-packages-null"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_29
    const-string v4, "cross-profile-calendar-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    const-string v4, "cross-profile-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_2a

    const-string v0, "factory_reset_protection_policy"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v4, v2}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2a
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v3, "suspend-personal-apps"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_2b
    iget-wide v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "profile-max-time-off"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_2c
    iget-wide v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2d

    iget-wide v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    const-string/jumbo v0, "profile-off-deadline"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    :cond_2d
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    const-string/jumbo v3, "vpn-package"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v3, "vpn-lockdown"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_2f
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v0, :cond_30

    const-string v3, "common-criteria-mode"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_30
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    if-eqz v0, :cond_31

    const-string/jumbo v3, "password-complexity"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_31
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_32

    const-string/jumbo v4, "nearby-notification-streaming-policy"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_32
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    if-eq v0, v3, :cond_33

    const-string/jumbo v3, "nearby-app-streaming-policy"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    :cond_33
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    const-string/jumbo v3, "organization-id"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    const-string v3, "enrollment-specific-id"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    const-string v3, "admin-can-grant-sensors-permissions"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    const-string/jumbo v3, "preferential-network-service-enabled"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    const/4 v3, 0x1

    if-eq v0, v3, :cond_36

    const-string/jumbo v3, "usb-data-signaling"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    :cond_36
    return-void
.end method
