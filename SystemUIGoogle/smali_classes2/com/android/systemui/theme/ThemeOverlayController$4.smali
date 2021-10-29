.class Lcom/android/systemui/theme/ThemeOverlayController$4;
.super Ljava/lang/Object;
.source "ThemeOverlayController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/theme/ThemeOverlayController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {v0}, Lcom/android/systemui/theme/ThemeOverlayController;->access$700(Lcom/android/systemui/theme/ThemeOverlayController;)Landroid/app/WallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {v0}, Lcom/android/systemui/theme/ThemeOverlayController;->access$700(Lcom/android/systemui/theme/ThemeOverlayController;)Landroid/app/WallpaperColors;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {v1}, Lcom/android/systemui/theme/ThemeOverlayController;->access$800(Lcom/android/systemui/theme/ThemeOverlayController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/theme/ThemeOverlayController;->access$702(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/theme/ThemeOverlayController;->access$802(Lcom/android/systemui/theme/ThemeOverlayController;I)I

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->access$900(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;I)V

    :cond_0
    return-void
.end method
