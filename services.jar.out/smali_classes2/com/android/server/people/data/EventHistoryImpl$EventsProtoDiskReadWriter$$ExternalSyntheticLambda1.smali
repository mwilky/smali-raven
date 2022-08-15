.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/server/people/data/EventList;

    invoke-static {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->$r8$lambda$Yp0tIyCkeYwqN2AOcfu70makIIU(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/people/data/EventList;)V

    return-void
.end method
