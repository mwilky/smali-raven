.class Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;->this$0:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;->this$0:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->access$400(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    :cond_0
    return-void
.end method
