.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/user/CreateUserActivity;->$r8$lambda$TsT5HYrdgi5_PxgsDaLx7uZ4cok(Lcom/android/systemui/user/CreateUserActivity;Landroid/content/pm/UserInfo;)V

    return-void
.end method
