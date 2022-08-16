.class public final Lcom/android/systemui/user/UserSwitcherActivity$onCreate$3;
.super Ljava/lang/Object;
.source "UserSwitcherActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/user/UserSwitcherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/UserSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$3;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$3;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-static {p0}, Lcom/android/systemui/user/UserSwitcherActivity;->access$buildUserViews(Lcom/android/systemui/user/UserSwitcherActivity;)V

    return-void
.end method
