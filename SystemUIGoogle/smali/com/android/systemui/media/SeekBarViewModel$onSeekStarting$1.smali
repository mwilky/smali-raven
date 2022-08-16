.class public final Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->isFalseSeek:Z

    return-void
.end method
