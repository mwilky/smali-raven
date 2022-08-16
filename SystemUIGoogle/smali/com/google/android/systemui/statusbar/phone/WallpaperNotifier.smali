.class public final Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;
.super Ljava/lang/Object;
.source "WallpaperNotifier.java"


# static fields
.field public static final NOTIFYABLE_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;


# instance fields
.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mNotifListener:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

.field public mShouldBroadcastNotifications:Z

.field public final mUserTracker:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

.field public mWallpaperChangedReceiver:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;

.field public mWallpaperPackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "com.breel.wallpapers.imprint"

    const-string v1, "com.breel.wallpapers18.tactile"

    const-string v2, "com.breel.wallpapers18.delight"

    const-string v3, "com.breel.wallpapers18.miniman"

    const-string v4, "com.google.pixel.livewallpaper.imprint"

    const-string v5, "com.google.pixel.livewallpaper.tactile"

    const-string v6, "com.google.pixel.livewallpaper.delight"

    const-string v7, "com.google.pixel.livewallpaper.miniman"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    const-string v0, "com.breel.wallpapers"

    const-string v1, "com.breel.wallpapers18"

    const-string v2, "com.google.pixel.livewallpaper"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mNotifListener:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance p1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

    invoke-direct {p1, p3}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mUserTracker:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

    return-void
.end method


# virtual methods
.method public final checkNotificationBroadcastSupport()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iput-object v2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    const/16 v3, 0x8

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
