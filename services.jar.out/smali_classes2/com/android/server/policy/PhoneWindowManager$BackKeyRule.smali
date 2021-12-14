.class final Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackKeyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method getMaxMultiPressCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onLongPress(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$5100(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method onPress(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$5000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    return-void
.end method
