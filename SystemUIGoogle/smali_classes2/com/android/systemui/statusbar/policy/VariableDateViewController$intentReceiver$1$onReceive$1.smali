.class final Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "VariableDateViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->access$setDateFormat$p(Lcom/android/systemui/statusbar/policy/VariableDateViewController;Landroid/icu/text/DateFormat;)V

    return-void
.end method
