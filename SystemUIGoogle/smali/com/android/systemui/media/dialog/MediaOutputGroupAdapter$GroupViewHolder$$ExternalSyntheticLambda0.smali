.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectableMediaDevice()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->isDeviceIncluded(Ljava/util/ArrayList;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;

    iget-object p2, p2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->getDeselectableMediaDevice()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->isDeviceIncluded(Ljava/util/ArrayList;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputGroupAdapter;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method
