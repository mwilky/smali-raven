.class public final synthetic Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/ElmyraService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    check-cast p1, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-static {p0, p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->$r8$lambda$TnYRED1q5o7I2h4utluaj8XVH3w(Lcom/google/android/systemui/elmyra/ElmyraService;Lcom/google/android/systemui/elmyra/gates/Gate;)V

    return-void
.end method
