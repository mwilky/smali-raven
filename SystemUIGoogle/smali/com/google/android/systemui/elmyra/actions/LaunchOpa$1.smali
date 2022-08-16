.class public final Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;
.super Ljava/lang/Object;
.source "LaunchOpa.java"

# interfaces
.implements Lcom/google/android/systemui/assist/OpaEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;->this$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V
    .locals 0

    const/4 p1, 0x0

    const/4 p5, 0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;->this$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iget-boolean p3, p3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p5

    :goto_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    move p1, p5

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;->this$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iget-boolean p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_3
    return-void
.end method
