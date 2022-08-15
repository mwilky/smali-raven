.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->f$0:I

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->$r8$lambda$x6vmXkQqLKftoeqBCKhhXEMcjAA(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method
