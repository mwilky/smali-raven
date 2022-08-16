.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Lcom/android/systemui/media/MediaData;

.field public final synthetic f$3:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/TextView;Lcom/android/systemui/media/MediaData;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$2:Lcom/android/systemui/media/MediaData;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$2:Lcom/android/systemui/media/MediaData;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;->f$3:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
