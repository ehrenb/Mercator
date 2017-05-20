.class public final Lb/a/a/a/a;
.super Ljava/lang/Object;
.source "DNSConstants.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "net.mdns.port"

    const-string v1, "5353"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lb/a/a/a/a;->a:I

    return-void
.end method
