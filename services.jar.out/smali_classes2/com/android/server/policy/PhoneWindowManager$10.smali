.class Lcom/android/server/policy/PhoneWindowManager$10;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method execute()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method
