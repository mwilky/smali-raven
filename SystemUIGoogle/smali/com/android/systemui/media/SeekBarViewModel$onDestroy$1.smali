.class public final Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object v1, v0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object v0, v0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;

    iput-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

    return-void
.end method
