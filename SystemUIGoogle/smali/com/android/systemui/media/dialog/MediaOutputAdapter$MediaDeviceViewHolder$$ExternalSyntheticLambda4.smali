.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda4;->f$1:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda4;->f$1:Lcom/android/settingslib/media/MediaDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onGroupActionTriggered(Lcom/android/settingslib/media/MediaDevice;Z)V

    return-void
.end method
