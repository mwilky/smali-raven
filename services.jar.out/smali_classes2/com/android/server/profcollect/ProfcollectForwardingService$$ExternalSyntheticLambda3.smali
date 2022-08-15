.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    iput-object p2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->$r8$lambda$7Bpa25sgP93mbvzkNsewB1fcSlQ(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/content/Context;)V

    return-void
.end method
