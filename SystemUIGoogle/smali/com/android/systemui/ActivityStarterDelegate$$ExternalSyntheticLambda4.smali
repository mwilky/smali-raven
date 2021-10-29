.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->$r8$lambda$6t-LSiD24UE4d-3HlFYy4ZUs6FY(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V

    return-void
.end method
