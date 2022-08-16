.class public final Lcom/android/systemui/media/dream/MediaViewHolder;
.super Ljava/lang/Object;
.source "MediaViewHolder.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$ViewHolder;


# instance fields
.field public final mContainer:Landroid/widget/FrameLayout;

.field public final mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/android/systemui/media/dream/MediaComplicationViewController;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dream/MediaViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    iput-object p3, p0, Lcom/android/systemui/media/dream/MediaViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method
