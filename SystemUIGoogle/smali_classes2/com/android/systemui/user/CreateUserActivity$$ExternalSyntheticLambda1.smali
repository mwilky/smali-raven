.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
