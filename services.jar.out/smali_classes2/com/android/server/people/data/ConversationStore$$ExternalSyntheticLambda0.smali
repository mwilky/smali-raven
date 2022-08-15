.class public final synthetic Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/DataOutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/DataOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-static {p0, p1}, Lcom/android/server/people/data/ConversationStore;->$r8$lambda$qBYKt9lcjm3XQdMBcn5Y5fR2YGg(Ljava/io/DataOutputStream;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
