.class Lcom/android/systemui/qs/QSPanelControllerBase$1;
.super Ljava/lang/Object;
.source "QSPanelControllerBase.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanelControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanelControllerBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->access$100(Lcom/android/systemui/qs/QSPanelControllerBase;)Lcom/android/systemui/statusbar/FeatureFlags;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelControllerBase;->access$200(Lcom/android/systemui/qs/QSPanelControllerBase;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->access$002(Lcom/android/systemui/qs/QSPanelControllerBase;Z)Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->access$300(Lcom/android/systemui/qs/QSPanelControllerBase;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->access$302(Lcom/android/systemui/qs/QSPanelControllerBase;I)I

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    :cond_0
    return-void
.end method
