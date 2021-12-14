.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;
.super Ljava/lang/Object;
.source "VariableDateViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/VariableDateView$OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/VariableDateViewController;-><init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/VariableDateView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasureAction(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->access$getLastWidth$p(Lcom/android/systemui/statusbar/policy/VariableDateViewController;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->access$maybeChangeFormat(Lcom/android/systemui/statusbar/policy/VariableDateViewController;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->access$setLastWidth$p(Lcom/android/systemui/statusbar/policy/VariableDateViewController;I)V

    :cond_0
    return-void
.end method
