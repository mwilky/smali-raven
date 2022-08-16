.class public final Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity$1;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivity;->finish()V

    return-void
.end method
