.class Lcom/android/server/rollback/LocalIntentReceiver;
.super Ljava/lang/Object;
.source "LocalIntentReceiver.java"


# instance fields
.field final mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalSender:Landroid/content/IIntentSender$Stub;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/LocalIntentReceiver$1;-><init>(Lcom/android/server/rollback/LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method getIntentSender()Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method
