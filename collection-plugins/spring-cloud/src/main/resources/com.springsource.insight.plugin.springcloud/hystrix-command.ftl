<#ftl strip_whitespace=true>
<#import "/insight-1.0.ftl" as insight />

<@insight.group label="Hystrix Command">
    <@insight.entry name="Label" value=operation.label />
    <@insight.entry name="HystrixEvents" if=operation.events??>
        <@insight.list type="ordered" collection=operation.events />
    </@insight.entry>
    <@insight.entry name="Exception" value=operation.exception if=operation.exception?? />
</@insight.group>

<@insight.sourceCodeLocation location=operation.sourceCodeLocation />