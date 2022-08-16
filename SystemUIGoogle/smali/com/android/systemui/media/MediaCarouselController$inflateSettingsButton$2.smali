.class public final Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object p1, p1, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
