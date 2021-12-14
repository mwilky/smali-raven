.class Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;
.super Landroid/database/ContentObserver;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    return-void
.end method
