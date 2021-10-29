.class Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;
.super Landroid/database/ContentObserver;
.source "OpaEnabledReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/OpaEnabledReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->access$100(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Z)V

    return-void
.end method
