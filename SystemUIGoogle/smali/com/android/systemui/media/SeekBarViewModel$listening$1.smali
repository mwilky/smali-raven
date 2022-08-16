.class public final Lcom/android/systemui/media/SeekBarViewModel$listening$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Z

.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->$value:Z

    if-eq v1, p0, :cond_0

    iput-boolean p0, v0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    :cond_0
    return-void
.end method
