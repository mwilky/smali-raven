.class public final Lcom/google/android/systemui/assist/OpaLayout$1;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    sget v1, Lcom/google/android/systemui/assist/OpaLayout;->$r8$clinit:I

    const-string/jumbo v1, "retract"

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/OpaLayout;->cancelCurrentAnimation(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$1;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startRetractAnimation()V

    return-void
.end method
