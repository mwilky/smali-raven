.class public final Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->isFalseSeek:Z

    :cond_0
    return-void
.end method
