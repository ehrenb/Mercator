.class public Lcm/aptoide/pt/v8engine/Progress;
.super Ljava/lang/Object;
.source "Progress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x2

.field public static final DONE:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final INACTIVE:I


# instance fields
.field private current:I

.field private indeterminate:Z

.field private final max:I

.field private final request:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private speed:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZIIII)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/Progress;->request:Ljava/lang/Object;

    .line 42
    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/Progress;->indeterminate:Z

    .line 43
    iput p3, p0, Lcm/aptoide/pt/v8engine/Progress;->max:I

    .line 44
    iput p4, p0, Lcm/aptoide/pt/v8engine/Progress;->current:I

    .line 45
    iput p5, p0, Lcm/aptoide/pt/v8engine/Progress;->speed:I

    .line 46
    iput p6, p0, Lcm/aptoide/pt/v8engine/Progress;->state:I

    .line 47
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcm/aptoide/pt/v8engine/Progress;->current:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcm/aptoide/pt/v8engine/Progress;->max:I

    return v0
.end method

.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/Progress;->request:Ljava/lang/Object;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcm/aptoide/pt/v8engine/Progress;->speed:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcm/aptoide/pt/v8engine/Progress;->state:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/Progress;->indeterminate:Z

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcm/aptoide/pt/v8engine/Progress;->current:I

    .line 71
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/Progress;->indeterminate:Z

    .line 59
    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcm/aptoide/pt/v8engine/Progress;->speed:I

    .line 79
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcm/aptoide/pt/v8engine/Progress;->state:I

    .line 87
    return-void
.end method
