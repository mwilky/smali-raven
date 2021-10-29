.class Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "WallpaperNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;->this$0:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    return-void
.end method
