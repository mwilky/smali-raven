.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$0:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$2:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$0:Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;->f$2:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->$r8$lambda$KLVw4PbQur0YwmyYTDp4Bw0foyg(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V

    return-void
.end method
