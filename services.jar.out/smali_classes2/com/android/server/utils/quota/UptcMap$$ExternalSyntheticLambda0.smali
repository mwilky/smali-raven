.class public final synthetic Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lcom/android/server/utils/quota/UptcMap;->$r8$lambda$00B9qFKQUzR27rKbiE8Aodq5dt8(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V

    return-void
.end method
