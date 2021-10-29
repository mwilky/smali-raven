.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    check-cast p1, Ldagger/Lazy;

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->$r8$lambda$CBqVSpB7Mel0xqOPaF4g4pe1ZNA(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method
