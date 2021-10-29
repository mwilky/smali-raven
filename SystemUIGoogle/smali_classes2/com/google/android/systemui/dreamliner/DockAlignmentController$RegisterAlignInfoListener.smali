.class final Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;
.super Ljava/lang/Object;
.source "DockAlignmentController.java"

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockAlignmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterAlignInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockAlignmentController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/dreamliner/DockAlignmentController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;->this$0:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockAlignmentController;Lcom/google/android/systemui/dreamliner/DockAlignmentController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;-><init>(Lcom/google/android/systemui/dreamliner/DockAlignmentController;)V

    return-void
.end method


# virtual methods
.method public onAlignInfoChanged(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;->this$0:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->access$100(Lcom/google/android/systemui/dreamliner/DockAlignmentController;Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V

    return-void
.end method
