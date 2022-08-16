.class public final Lcom/google/android/setupdesign/view/BottomScrollView$1;
.super Ljava/lang/Object;
.source "BottomScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/BottomScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    sget v0, Lcom/google/android/setupdesign/view/BottomScrollView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
