.class public abstract Lcom/android/settings/notification/app/NotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotificationPreferenceController.java"


# static fields
.field public static final CHANNEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHANNEL_GROUP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected final mContext:Landroid/content/Context;

.field protected mConversationDrawable:Landroid/graphics/drawable/Drawable;

.field protected mConversationInfo:Landroid/content/pm/ShortcutInfo;

.field protected final mNm:Landroid/app/NotificationManager;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected mPreferenceFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$khMuDOER8E7m4ZMNQbF_gTVQJLc(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/NotificationPreferenceController;->lambda$static$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/app/NotificationPreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/notification/app/NotificationPreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_GROUP_COMPARATOR:Ljava/util/Comparator;

    sget-object v0, Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mNm:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkCanBeVisible(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ChannelPrefContr"

    const-string p1, "No channel"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/16 v1, -0x3e8

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    if-lt p0, p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method protected hasValidGroup()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isIncludedInFilter()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected isChannelBlockable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isChannelGroupBlockable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result p0

    return p0
.end method

.method protected isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected final isDefaultChannel()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method abstract isIncludedInFilter()Z
.end method

.method protected onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            "Landroid/app/NotificationChannel;",
            "Landroid/app/NotificationChannelGroup;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/content/pm/ShortcutInfo;",
            "Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    iput-object p3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iput-object p6, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-object p4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mConversationInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p7, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    return-void
.end method

.method protected saveChannel()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
