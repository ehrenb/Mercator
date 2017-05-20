.class public Lb/a/a/n$b;
.super Ljava/lang/Object;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static volatile a:Lb/a/a/n;


# direct methods
.method public static a()Lb/a/a/n;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lb/a/a/n$b;->a:Lb/a/a/n;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lb/a/a/n$d;

    invoke-direct {v0}, Lb/a/a/n$d;-><init>()V

    sput-object v0, Lb/a/a/n$b;->a:Lb/a/a/n;

    .line 231
    :cond_0
    sget-object v0, Lb/a/a/n$b;->a:Lb/a/a/n;

    return-object v0
.end method
