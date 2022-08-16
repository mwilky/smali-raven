.class final Lcom/android/systemui/biometrics/UdfpsShell$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UdfpsShell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/UdfpsShell;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/commandline/Command;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsShell;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsShell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsShell$1;->this$0:Lcom/android/systemui/biometrics/UdfpsShell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell$1;->this$0:Lcom/android/systemui/biometrics/UdfpsShell;

    return-object p0
.end method
