.class public final Lcom/android/systemui/media/MediaCarouselControllerKt;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# static fields
.field private static final DEBUG:Z

.field private static final settingsIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    const-string v0, "MediaCarouselController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z

    return-void
.end method

.method public static final synthetic access$getDEBUG$p()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getSettingsIntent$p()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    return-object v0
.end method
